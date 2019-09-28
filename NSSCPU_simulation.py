import queue
from threading import Thread


class FlashMemory:
    def __init__(self):
        self.mem = [0] * 16384
        self.last_empty_space = 1
        self.program_count = 1
        self.program_table = {}

        self.load_flash_from_file("test1.asm")
        self.load_flash_from_file("test2.asm")

        print(self.mem[50])

    def write_to_flash(self, addr, val):
        self.mem[addr] = val

    def read_from_flash(self, addr):
        return self.mem[addr]

    def load_flash_from_file(self, file):
        converted = cpu.read_convert(file)

        print(converted)
        self.program_table[str(file)] = self.program_count
        self.mem[self.last_empty_space] = self.program_table[str(file)]
        self.mem[self.last_empty_space + 1] = self.last_empty_space + 3
        self.mem[self.last_empty_space + 2] = self.last_empty_space + int(str(converted[1]), 0) + 2
        self.mem[self.last_empty_space + 3:] = converted
        self.program_count += 1

        self.last_empty_space += int(str(converted[1]), 0) + 3

        print(self.mem)


class MemoryManager:

    def __init__(self):
        self.memory = [0] * 16384
        self.start_addr = 0
        self.fin_addr = 0

    def write(self, operand1, operand2):
        self.memory[operand1] = hex(operand2)

        if operand1 == 8:
            cpu.program_invoked = True

        if operand1 == 11 and operand2 == 0:
            prog_name = nsscpu_terminal.read_queue.get()
            self.memory[12] = flash_mem.program_table[prog_name]

        if operand1 == 11 and operand2 != 0:
            print("-------------")
            print(operand2)
            print(flash_mem.read_from_flash(operand2))
            self.memory[12] = flash_mem.read_from_flash(operand2)
            print(self.memory[12])

        return False

    def read(self, operand1):
        if operand1 == 12:
            return self.memory[12]
        item = self.memory[operand1]
        if isinstance(item, float):
            return item

        return int(str(item), 0)


class NSSCPU:
    MEM_SIZE = 16384

    class Instruction:

        def NAND(self):
            return mmu.write(self.operand_1, ~(mmu.read(self.operand_1) & mmu.read(self.operand_2)))

        def ADD(self):
            return mmu.write(self.operand_1, mmu.read(self.operand_1) + mmu.read(self.operand_2))

        def ADDF(self):
            return mmu.write(self.operand_1, float(mmu.read(self.operand_1)) + float(mmu.read(self.operand_2)))

        def ADDi(self):
            return mmu.write(self.operand_1, mmu.read(self.operand_1) + self.operand_2)

        def LT(self):
            if mmu.read(self.operand_1) < mmu.read(self.operand_2):
                return mmu.write(self.operand_1, 1)
            else:
                return mmu.write(self.operand_1, 0)

        def LTF(self):
            if float(mmu.read(self.operand_1)) < float(mmu.read(self.operand_2)):
                return mmu.write(self.operand_1, 1)
            else:
                return mmu.write(self.operand_1, 0)

        def SRL(self):
            if mmu.read(self.operand_2) < 32:
                return mmu.write(self.operand_1, mmu.read(self.operand_1) >> mmu.read(self.operand_2))
            else:
                return mmu.write(self.operand_1, mmu.read(self.operand_1) << (mmu.read(self.operand_2) - 32))

        def SRLi(self):
            if self.operand_2 < 32:
                return mmu.write(self.operand_1, mmu.read(self.operand_1) >> self.operand_2)
            else:
                return mmu.write(self.operand_1, mmu.read(self.operand_1) << self.operand_2 - 32)

        def MUL(self):
            return mmu.write(self.operand_1, mmu.read(self.operand_1) * mmu.read(self.operand_2))

        def MULF(self):
            return mmu.write(self.operand_1, float(mmu.read(self.operand_1)) * float(mmu.read(self.operand_2)))

        def CP(self):
            return mmu.write(self.operand_1, mmu.read(self.operand_2))

        def CPi(self):
            return mmu.write(self.operand_1, self.operand_2)

        def CPI(self):
            temp = mmu.read(self.operand_2)
            return mmu.write(self.operand_1, mmu.read(temp))

        def CPIr(self):
            temp_1 = mmu.read(self.operand_1)
            temp_2 = mmu.read(self.operand_2)
            return mmu.write(temp_1, temp_2)

        def BZ(self):
            if mmu.read(self.operand_2) == 0:
                cpu.program_counter = mmu.read(self.operand_1)
            else:
                cpu.program_counter = cpu.program_counter + 1

        def JMP(self):
            cpu.program_counter = mmu.read(self.operand_1) + self.operand_2

        def __init__(self, func=None, operand_1=None, operand_2=None, cpu=None):
            self.operand_1 = operand_1
            self.operand_2 = operand_2
            self.cpu = cpu

            if func is not None:
                self.run = getattr(self, func)

    def __init__(self, mmu, input_file):
        self.input_file = input_file
        self.mem_array_sim = []
        self.opcodes_v2 = {"NAND": 0, "ADD": 1, "ADDF": 2, "ADDi": 3, "LT": 4, "LTF": 5, "SRL": 6, "SRLi": 7, "MUL": 8,
                           "MULF": 9, "CP": 10, "CPi": 11, "CPI": 12, "CPIr": 13, "BZ": 14, "JMP": 15}
        self.opcodes_v2_r = {opcode_num: opcode for opcode, opcode_num in self.opcodes_v2.items()}
        self.mmu = mmu
        self.priv_mode = 1
        self.program_counter = 0
        self.program_counter_prev = 0
        self.program_invoked = False
        self.return_address = 0

    def read_convert(self, input_file):
        converted_instructions = [0] * NSSCPU.MEM_SIZE
        with open(input_file) as file:
            for line in file:
                line = line.rstrip("\n")
                if line.startswith("//"):
                    continue

                index = int(line[0:line.find(":")])
                list_line = line[line.find(":") + 2:len(line)].split(" ")

                if "//" in list_line:
                    list_line = list_line[0: list_line.index("//")]

                if len(list_line) == 1:
                    try:
                        converted_instructions[index] = hex(int(list_line[0]))
                    except ValueError as err:
                        converted_instructions[index] = float.hex(float(list_line[0]))
                else:
                    opcode = self.opcodes_v2[list_line[0]]
                    operand_1 = list_line[1]
                    operand_2 = list_line[2]

                    if int(operand_2) > 0 and int(operand_1) > 0 and opcode in range(len(self.opcodes_v2)):
                        operand_2 = (int(operand_2) + (1 << 32)) % (1 << 32)
                        operand_2 = 0x3FFF & operand_2

                        instruction_dec = (opcode << 28) | (int(operand_1) << 14) | int(operand_2)
                        converted_instructions[index] = hex(instruction_dec)

        return converted_instructions

    def run_simulation(self, _terminal):
        while True:
            instr = mmu.read(self.program_counter)
            self.program_counter_prev = self.program_counter

            self.program_counter += 1

            try:
                op = self.opcodes_v2_r.get(int(instr >> 28))
                operand1 = (instr >> 14) & 0x3FFF
                operand2 = instr & 0x3FFF

                instruction = self.Instruction(op, operand1, operand2, self)
                instruction.run()

                if self.program_invoked:
                    self.priv_mode = False
                    self.return_address = self.program_counter
                    self.program_counter = mmu.read(9)
                    self.program_invoked = False

            except TypeError as err:
                pass

            if self.priv_mode is False:
                if self.program_counter == mmu.read(10):
                    self.program_counter = self.return_address

            if self.program_counter_prev == self.program_counter:
                print("simulation exited")
                break


class Terminal:

    def __init__(self):
        self.read_queue = queue.Queue()
        print("Welcome to NSSCPU command line interface '0' to exit")

    def start_terminal(self):
        while True:
            line = input("")
            if line == "0":
                self.read_queue.put(line)
                break
            if line == "":
                print("invalid input")
            else:
                self.read_queue.put(line)


if __name__ == '__main__':
    mmu = MemoryManager()
    cpu = NSSCPU(mmu, "vsos_test.asm")
    flash_mem = FlashMemory()
    cpu.mmu.memory = cpu.read_convert(cpu.input_file)
    nsscpu_terminal = Terminal()

    try:
        sim = Thread(target=cpu.run_simulation, args=(nsscpu_terminal,)).start()
        terminal = Thread(target=nsscpu_terminal.start_terminal(), args=()).start()

    except():
        print("Error: unable to start thread")

## VSOS ON NSSCPU

Very Simple OS on Not So Simple CPU

The aim of this project is, to replicate early modern operating systems and develop a minimal OS which runs on the Very Simple CPU developed in Ozyegin University by Dr. H. Fatih Uğurdağ.

We make the following assumptions:
 * Applications gracefully exit after execution.
 * Applications load in first-in-first-out methods.

The simulator consists of 4 Python modules: Terminal client, MemoryManager, FlashMemory and Core Simulation.

VSOS is written in the C language and compiled with VerySimpleCPU C compiler developed by Dr. Barış Aktemur and Deniz İskender.

#### Terminal Class

Terminal module runs on a different thread that continuously reads input from the user.
The queue is managed in a first-in-first-out manner as the terminal constantly adds input to the queue and the operating system pops and reads from the queue.

#### Memory Manager Class

MemoryManager module contains methods to manage our memory.
Since the compiler and the simulation lacks methods to call and return we utilize VSCPU special registers on the core memory addresses 8,9, 10, 11 and 12.
Operating systems *8 = 1 when a program call is invoked and *9 = start_addr *10 = end_addr of the program after they are loaded into the memory.
In order to read from the flash and the console we utilize *11 and *12 in which we make request to *11 = 0 for console and *11 = n for flash and the response is written to *12 the output is then written back to *12.

#### Flash Memory Class

FlashMemory is a wrapper module that represents a flash memory in our simulation. It holds the programs in it’s internal list which is written into the core memory by the OS during execution.
FlashMemory holds programs with their metadata in the first 3 addresses of the programs.
 * program_name (namelookup table)
 * program_start (wrt FlashMem)
 * program_end (wrt FlashMem)

#### NSSCPU CLASS

With the addition of simulation of call and ret methods we decided to rename the simulation to NotSoSimpleCPU (NSSCPU). NSSCPU is similar to VSCPU V2 in-terms of instructions. We have an inner-instruction class which wraps instructions, then generates the functions on run-time during the execution of the program which allows us a flexible design when it comes to adding new instructions.

It holds a memory manager unit which is responsible for the core memory. This allows us to control reads and writes during execution since we use earlier mentioned methods to control the program execution.
NSSCPU holds ret address as an internal register and privilege mode. During program execution privilege mode is turned 0.

Read_convert function is tasked to turn .asm files into actual hex 32 bit machine code. This is vital to our simulation since the simulation is expected to simulate real hardware.

Run_simulation method is the bare-bone of our simulation. It executes all the hex-code in a program by calling respective instruction functions according to a program_counter.

Once *8 = 1 is intercepted, the main program, which is VSOS (VerySimpleOS) in our case is interrupted and priv mode is activated. Once priv mode is activated execution continues from current address + target programs start address. If current address exceeds current program’s end address, an exception is thrown in order to prevent any misleading behaviour.

At this point execution of our loaded program (which is loaded into memory by VSOS and the starting address is written to 9 and end to 10) is started and privilege_mode and ret_address is set. Once the program_counter reaches the end_address we jump back to return_address by setting the program_counter to end_address.


#### Main Method

As explained earlier the Terminal Module and the Core CPU module runs on different threads. The rolling buffer queue is written to by the terminal client whereas it’s popped and read by the VSOS to receive input from the user.

#### VERY SIMPLE OS (VSOS)

Very Simple Operating System needs to be aware of a few things:
* Programs available to call
* Which programs to call
* Where to place these programs when they are called
* Schedule the Programs when they are invoked

For the sake of simplicity we make the assumption that applications gracefully exit before another one is called.

#### VSOS.C

We hold prog info in increments of 3 in an array called progInfo, which stores the 3 main components of programs in indexes of:

1. Prog_name (from namelookup table)
2. Prog_start (wrt FlashMem)
3. Prog_end (wrt FlashMem)

progInfo array is filled from the flashmem with the previously mentioned methods to read from the flash and communicate with the simulation.

We set *11 = 0 which implies that OS is about to read from the queue. The results are then written into *12.
The results (which is the name of the program) looked up from the array of progInfo and their flash start_addr and end_addr are held.
The program is read from start_addr to end_addr and it is written to the empty space after the operating system one by one. Then as previously explained in the simulation, 8-9-10th addresses are set and execution of the program begins.

#### VERY SIMPLE CPU COMPILER

Originally the Very Simple CPU C Compiler is not meant for application development. It is meant for bare-metal programming which in-turn leads to some complications:
* There’s no metadata per application and we have to estimate the size of programs to tell the ending location of programs.
* There is no stack growth algorithm built-in.
* Due to the reason above stack-frames are often left-out or
incompletely transferred.

Very simple CPU compiler is not available online at the moment.

Thank you for your attention.

Doğa Yılmaz & Berk Buzcu

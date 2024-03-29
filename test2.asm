0: JMP 3 20 // Goto main -- Jump to main
//$REGISTERS_SECTION
1: 48 // Address of $BASE_main -- SP
2: 48 // Address of $BASE_main -- BP
3: 0 // Zero
4: 1 // One
5: -1 // Negative one
6: 1.00000 // Float One
7: -1.00000 // Negative Float One
8: 0 // VSCPU Special 1
9: 0 // VSCPU Special 2
10: 0 // VSCPU Special 3
11: 0 // VSCPU Special 4
12: 0 // VSCPU Special 5
13: 0 // VSCPU Special 6
14: 0 // GP Reg 1
15: 0 // GP Reg 2
16: 0 // GP Reg 3
17: 0 // GP Reg 4
18: 0 // GP Reg 5
19: 0 // GP Reg 6
//$TEXT_SECTION
//main
20: CPIr 1 44 // Push int literal 30
21: ADDi 1 1
22: CPIr 1 45 // Push int literal 62
23: ADDi 1 1
24: ADD 1 5
25: CPI 15 1 // Pop REG_2
26: ADD 1 5
27: CPI 14 1 // Pop REG_1
28: ADD 14 15
29: CPIr 1 14 // Push REG_1
30: ADDi 1 1
31: ADD 1 5
32: CPI 14 1 // Pop REG_1
33: CP 1 2 // Throw away locals and temps
34: ADD 1 5
35: CPI 2 1 // Pop REG_BP
36: ADD 1 5
37: CPI 15 1 // Pop REG_2
38: CPIr 1 14 // Push REG_1
39: ADDi 1 1
40: JMP 15 0 // End of the function. Go back to the caller
//$RETURN_main
41: ADD 1 5
42: CPI 14 1 // Pop stack into REG_1
//$HALT
43: JMP 3 43 // Goto $HALT -- Instruction jumps to itself to terminate the process.
//$CONSTANT_DATA_SECTION
//@30
44: 30 // TYPE(int)
//@62
45: 62 // TYPE(int)
//$GLOBAL_DATA_SECTION
//$LOCAL_DATA_SECTION
//main
//$STACK_SECTION
//$STACK_FRAME_main
46: 41 // Address of $RETURN_main -- $RA_main
47: 0 // $OLDBP_main
//$BASE_main

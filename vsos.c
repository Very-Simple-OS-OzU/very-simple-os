#include "header.inc"

int main() {
    int osEnd = *((int *) 1) + 1;
    int numberOfProgs = 40;
    int progInfo[120];
    int progCount = 0;
    int progLocation = 1;

    *((int *) 11) = progLocation + 2;
    int end1 = *((int *) 12);
    *((int *) 11) = end1 + 1;
    int check = *((int *) 12);

    while(check != 0)
    {
        *((int *) 11) = 100;
        *((int *) 11) = progLocation;
        int name = *((int *) 12);
        progInfo[progCount * 3 + 0] = name;

        *((int *) 11) = progLocation + 1;
        int start = *((int *) 12);
        progInfo[progCount * 3 + 1] = start;

        *((int *) 11) = progLocation + 2;
        int end = *((int *) 12);
        progInfo[progCount * 3 + 2] = end;

        *((int *) 11) = end + 1;
        int check = *((int *) 12);

        if(end == 0)
        {
            break;
        }

        progLocation = end + 1;
        progCount++;
    }

    while(1)
    {
        *((int *) 11) = 0;
        int programCheck = *((int *) 12);
        if(programCheck != 0)
        {
            int pc = 0;
            for(int i = 0; i < numberOfProgs; i++)
            {
                int programName = progInfo[1 + i * 3];
                if(programCheck == programName)
                {
                    int programStart = progInfo[2 + i * 3];
                    int programEnd = progInfo[3 + i * 3];
                    for(int j = programStart; j < programEnd; j++)
                    {
                        *((int *) 11) = programStart + pc;
                        int value = *((int *) 12);
                        int* addr = osEnd + pc;
                        addr = value;
                    }
                    *((int *) 12) = 0;
                }
            }
            *((int *) 9) = osEnd;
            *((int *) 10) = osEnd + pc;
            *((int *) 8) = 1;
        }
    }
}
*-----------------------------------------------------------
* Title      : part1
* Written by : Huu Chi Huynh
* Date       : 12/01/2022
* Description: Part 1 of Practical 7
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B  #9,D1 *Puts the literal number 9 into D1
    MOVE.B  D1,D2 *Copies the value in D1 into D2
    MOVE.B  D1,1100 *Copies the value in D1 into memory location $44C as 1100 isn't a hexadecimal and
                    *is automatically converted into hexadecimal.
    MOVE.B  1100,D2 *Copies the value in memory location $44C into D2 as $44C == tohex(1100)
    MOVE.B  1100,100 *Copies the value in memory location $44C into memory location $64 as 100 isn't a hexadecimal and
                     *is automatically converted into hexadecimal like the 1100.

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

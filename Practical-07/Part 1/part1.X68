*-----------------------------------------------------------
* Title      : part 1
* Written by : Chi Huu Huynh
* Date       : 30/12/2021
* Description: Practical 7 - Part 1
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B #9,D1 # Moves value 9 into data register 1
    MOVE.B D1,D2 # Copys the value 9 from data register 1 to data register 2
    MOVE.B D1, 1100 # Doesn't do anything
    MOVE.B 1100, D2 # Doesn't do anything
    MOVE.B 1100, 100 # Doesn't do anything


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

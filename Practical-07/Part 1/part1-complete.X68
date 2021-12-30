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
    MOVE.B D1,D2 # Copys the value 9 from data register 1 to data register 
    
    * For this project I'll set D1 to 12 so you can see the values changing.
    MOVE.B #12,D1 # Moves value 9 into data register 1
    MOVE.B D1, $1100  # Move value of D1 into address 1100
    MOVE.B ($1100), D2 # Dereference address 1100 and move its value into D2
    MOVE.B ($1100), $100 # Dereference address 1100 and move its value into address 100

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

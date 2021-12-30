*-----------------------------------------------------------
* Title      : Practical 7 - Part 2
* Written by : Chi Huu Huynh
* Date       : 30/12/2021
* Description: Displays the value in data register 1
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B #9,D1 # Moves value 9 into data register D1
    LEA text, A1 # Moves the variable address of text into address register A1
    MOVE #14, D0 # Moves the value 14 into data register D0
    
    * TRAP #15 executes the action inside of D0 which is 
    * Display the NULL terminated string at (A1) without CR, LF.
    * Which means display the text variable
    TRAP #15 
    
    MOVE #3, D0 # Moves the value 3 into data register D0
    
    * TRAP #15 executes the action inside of D0 which is 
    * "Display signed number in D1.L in decimal in smallest field. (see task 15 & 20)"
    * Which means display the value in D1    
    TRAP #15

    SIMHALT             ; halt simulator

* Put variables and constants here
text    dc.b 'Data Register: ', 0 # String variable for output

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

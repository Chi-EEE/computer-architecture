*-----------------------------------------------------------
* Title      : Practical 7 - Part 3
* Written by : Chi Huu Huynh
* Date       : 30/12/2021
* Description: Ask for input and Display the input as 'Data Register: ' + value
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA text, A1 # Moves variable text into address register A1
    MOVE #4,D0 # Moves value 4 into data register D0
    
    * TRAP #15 executes the action inside of D0 which is:
    * Read a number from the keyboard into D1.L.
    * Which means input a number and it'll place the number into data register D1
    TRAP #15
    MOVE #14, D0 # Moves value 14 into data register D0

    * TRAP #15 executes the action inside of D0 which is:
    * Display the NULL terminated string at (A1) without CR, LF.
    * Which means display the string variable at A1 which is text
    TRAP #15
    
    MOVE #3,D0 # Moves value 3 into data register D0
    
    * TRAP #15 executes the action inside of D0 which is:
    * Display signed number in D1.L in decimal in smallest field. (see task 15 & 20)
    * Which means display the signed number in D1
    TRAP #15

    SIMHALT             ; halt simulator

* Put variables and constants here
text    dc.b    'Data Register: ', 0 # String variable for output

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      : Part 1 - Practical 8
* Written by : Huu Chi Huynh
* Date       : 19/01/2022
* Description: Ask gamer to input their points and store it into memory and output their points.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    *Display Message
    LEA     input_text,A1
    MOVE    #13,D0
    TRAP    #15
    
    *Input to D1
    MOVE    #4,D0
    TRAP    #15
    
    *Store D1 value into memory location 5000
    MOVE.B  D1,$5000
    
    *Clear D1
    CLR  D1
    
    *Put memory location into A0
    LEA     $5000,A0
    
    *Dereference memory location and put value into D1
    MOVE.B (A0),D1
    
    *Display Message
    LEA     output_text,A1
    MOVE    #14,D0
    TRAP    #15
    
    *Display value inside of D1
    MOVE    #3,D0
    TRAP    #15
    SIMHALT             ; halt simulator

* Put variables and constants here

input_text dc.b   'How many gamer points do you have?',0
output_text dc.b   'Gamer points: ',0

    END    START        ; last line of source
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

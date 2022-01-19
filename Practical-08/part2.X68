*-----------------------------------------------------------
* Title      : Part 2 - Practical 8
* Written by : Huu Chi Huynh
* Date       : 19/01/2022
* Description: 
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA     Health,A2
    
    ADD     #5,(A2)
    
    SUB     #5,(A2)
    
    MOVE.B  (A2),D1
    *Display D1
    MOVE    #3,D0
    TRAP    #15
    
    *Perform a left side shift and it doubles the value stored inside of D1
    LSL.B   #1, D1
    *Display D1
    MOVE    #3,D0
    TRAP    #15
    
    *Perform a right side shift and it divides the value by half stored inside of D1
    LSR.B   #1, D1
    *Display D1
    MOVE    #3,D0
    TRAP    #15
    SIMHALT             ; halt simulator

* Put variables and constants here

Health dc.b $10

    END    START        ; last line of source
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

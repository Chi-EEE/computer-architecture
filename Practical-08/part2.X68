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
    
    MOVE (A2), D2
    
    MULU.W   #2,D2 *Multiplies the value in D2 by 2 
    MOVE     D2,(A2)
    
    DIVU.W   #2,D2 *Divides the value in D2 by 2
    MOVE     D2,(A2)
    
    SIMHALT             ; halt simulator

* Put variables and constants here

Health dc.w $10

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

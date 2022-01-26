*-----------------------------------------------------------
* Title      : Part 3 - Practical 8
* Written by : Huu Chi Huynh
* Date       : 26/01/2022
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program  

    MOVE.L #$00FFFF00, D1    
    MOVE.B #21, D0
    TRAP #15 * Change font colour to green
    
    * 13 Output
    LEA ask_name, A1
    MOVE.B #13, D0
    TRAP #15
        
    * 11 Clear Screen
    MOVE.W #$FF00, D1 
    MOVE.B #11, D0
    TRAP #15
    
    *INPUT name #2
    MOVE.B #2, D0
    TRAP #15
     
    *Output Name
    MOVE.B #13, D0
    TRAP #15
    
    *Output
    LEA confirm1, A1
    MOVE.B #14, D0
    TRAP #15


Y_OR_N:
    * 5: Read single character from the keyboard into D1.B.
    MOVE.B #5, D0
    TRAP #15
        
    LEA YES, A1    
    MOVE.B (A1), D2
    CMP D1, D2
    BEQ NEXT *Continue
        
    LEA NO, A1
    MOVE.B (A1), D2
    CMP D1, D2
    BEQ START *Ask for name again
     
    MOVE.L $004CBDFF, D1
    MOVE.B #21, D0
    TRAP #15 * Change font colour to orange
    
    *Output
    LEA invalid_response, A1
    MOVE.B #13, D0
    TRAP #15
        
    MOVE.L $0000FF00, D1
    MOVE.B #21, D0
    TRAP #15 * Change font colour to green
    
    *Loop and ask question again    
    
    BRA Y_OR_N
NEXT:    
    LEA ask_age, A1
    
    MOVE.B #18, D0
    TRAP #15
        
    MOVE.B #17, D0
    TRAP #15
    SIMHALT             ; halt simulator
    
invalid_response dc.b 'Please enter a valid response.',0
ask_name dc.b 'Please enter your name: ',0
confirm1 dc.b 'Is that your name? Y or N ',0
confirm2 dc.b 'Y or N',0
YES dc.b 89,0
NO dc.b 78,0
ask_age dc.b 'Please enter your age: ',0
name_length dc.w 0
name dc.b '',0

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

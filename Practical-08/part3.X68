*-----------------------------------------------------------
* Title      : Part 3 - Practical 8
* Written by : Huu Chi Huynh
* Date       : 26/01/2022
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program    
    *Output
    LEA ask_name, A1
    MOVE.B #13, D0
    TRAP #15
    
    *INPUT
    MOVE.B #2, D0
    TRAP #15
        
    MOVE.B (A1), name *Store name into name variable
    
    *Output
    LEA confirm1, A1
    MOVE.B #13, D0
    TRAP #15
       
    *Output Name
    LEA name, A1
    MOVE.B #13, D0
    TRAP #15
    
    *Output
    LEA confirm2, A1
    MOVE.B #13, D0
    TRAP #15

Y_OR_N:
    MOVE.B #5, D0
    TRAP #15
    
    CMP D1, y
    BEQ NEXT *Continue
    
    CMP D1, n
    BEQ START *Ask for name again
    
    *Output
    LEA invalid_response, A1
    MOVE.B #13, D0
    TRAP #15

    *Loop and ask question again
    BRA Y_OR_N
NEXT:    
    LEA ask_age, A1
    
    MOVE.B #18, D0
    TRAP #15

* Put program code here
    *2  Read string from keyboard and store at (A1), NULL terminated, length retuned in D1.W (max 80) 
    *5 Read single character from the keyboard into D1.B.
    *8  Return time in hundredths of a second since midnight in D1.L. 
    *11 Position the cursor at ROW, COL.

    *The high byte of D1.W holds the COL number (0-79),  

    *The low byte holds the ROW number (0-31).

    *0,0 is top left 79,31 is the bottom right. 

    *Out of range coordinates are ignored. 

 *Clear Screen : Set D1.W to $FF00.
    *13 Display the NULL terminated string at (A1) with CR, LF. DONE
    *17 Combination of Trap codes 14 & 3.

 *Display the NULL terminated string at (A1) without CR, LF then

 *Display the decimal number in D1.L.
    *18 Combination of Trap codes 14 & 4.
 *Display the NULL terminated string at (A1) without CR, LF then
 *Read a number from the keyboard into D1.L.
    
*21 Set Font Color
  *D1.L = color as $00BBGGRR
  *           BB is amount of blue from $00 to $FF
  *           GG is amount of green from $00 to $FF
  *           RR is amount of red from $00 to $FF
  *D2.B = style by bits,  0 = off, 1 = on
  *           bit0 is Bold
  *           bit1 is Italic
  *           bit2 is Underline
  *           bit3 is StrikeOut 

    SIMHALT             ; halt simulator
    
invalid_response dc.b 'Please enter a valid response.',0
ask_name dc.b 'Please enter your name: ',0
name dc.b '',0
confirm1 dc.b 'Is your name... ',0
confirm2 dc.b 'Y or N',0
y dc.b 'Y',0
n dc.b 'N',0
ask_age dc.b 'Please enter your age: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

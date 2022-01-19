*-----------------------------------------------------------
* Title      : part2
* Written by : Huu Chi Huynh
* Date       : 12/01/2022
* Description: Part 2 of Practical 7
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B  #9,D1   *Moves the value 9 into D1
    LEA     text,A1 *Moves the variable address location of text into A1
    MOVE    #14,D0  *Moves the value 14 into D0, this is used for the instuction TRAP #15
    TRAP    #15     *TRAP #15 preforms the action inside of D0 which is 14:
                    *"Display the NULL terminated string at (A1) without CR, LF."
                    *Display the string inside of A1
    
    MOVE    #3,D0   *Moves the value 3 into D0, this is used for the instuction TRAP #15
    TRAP    #15     *TRAP #15 performs the action inside of D0 which is 3:
                    *"Display signed number in D1.L in decimal in smallest field."
                    *Display the number in D1

    SIMHALT             ; halt simulator

* Put variables and constants here
text    dc.b 'Data Register: ', 0   *Variable for string output

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

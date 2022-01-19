*-----------------------------------------------------------
* Title      : part3
* Written by : Huu Chi Huynh
* Date       : 12/01/2022
* Description: Part 3 of Practical 7
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA     text,A1 *Copies the variable address location of 'text' and puts it into A1
    MOVE    #4,D0   *Moves the number 4 into D0 (Used for TRAP #15)
    TRAP    #15     *TRAP #15 performs the action 4 in D0 which is:
                    *"Read a number from the keyboard into D1.L."
                    *Get an input from the user and put the value inputted into D1
                    
    MOVE    #14,D0  *Moves the number 14 into D0 (Used for TRAP #15)
    TRAP    #15     *Performs the action 14 in D0 which is:
                    *"Display the NULL terminated string at (A1) without CR, LF."
                    *Dereference addresss at A1 and output its string
                    
    MOVE    #3,D0   *Moves the number 3 into D0 (Used for TRAP #15)
    TRAP    #15     *Performs the action 3 in D0 which is:
                    *"Display signed number in D1.L in decimal in smallest field."
                    *or Display the number inside of D1

    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b   'Data Register: ',0     *String variable for output

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

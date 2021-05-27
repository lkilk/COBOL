       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC A(10).
           01 WS-BIRTHDAY PIC 9999.
           01 WS-DATE PIC 9999.
           01 WS-GREETING PIC A(40).
       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE(5:4) TO WS-DATE.
           DISPLAY "Todays date is: "WS-DATE
           DISPLAY "What's your name?".
           ACCEPT WS-NAME.
           DISPLAY "When's your birthday? (MMDD):".
           ACCEPT WS-BIRTHDAY. 

           CALL 'birthday-checker' USING WS-NAME WS-BIRTHDAY WS-DATE
           WS-GREETING.
           

       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-birthday-checker.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC A(10).
           01 WS-BIRTHDAY PIC 9999.
           01 WS-DATE PIC 9999.
           01 WS-GREETING PIC A(40).
       PROCEDURE DIVISION.

           RETURNS-ALMOST-BD-MESSAGE-IF-BIRTHDAY-TOMORROW.
           MOVE 'Liam' TO WS-NAME.
           MOVE 0525 TO WS-BIRTHDAY.
           MOVE 0526 TO WS-DATE.
           CALL 'birthday-checker' USING WS-NAME WS-BIRTHDAY WS-DATE 
           WS-GREETING.
           CALL 'assert-equals' USING "It's almost your birthday, Liam." 
           WS-GREETING.

           RETURNS-BD-MESSAGE-IF-BIRTHDAY.
           MOVE 'Liam' TO WS-NAME.
           MOVE 0526 TO WS-BIRTHDAY.
           MOVE 0526 TO WS-DATE.
           CALL 'birthday-checker' USING WS-NAME WS-BIRTHDAY WS-DATE 
           WS-GREETING.
           CALL 'assert-equals' USING "Happy Birthday, Liam!" 
           WS-GREETING.
       
           RETURNS-NOT-BD-MESSAGE-IF-NOT-BIRTHDAY.
           MOVE 'Liam' TO WS-NAME.
           MOVE 0326 TO WS-BIRTHDAY.
           MOVE 0526 TO WS-DATE.
           CALL 'birthday-checker' USING WS-NAME WS-BIRTHDAY WS-DATE 
           WS-GREETING.
           CALL 'assert-equals' USING "It's not your birthday, Liam." 
           WS-GREETING.


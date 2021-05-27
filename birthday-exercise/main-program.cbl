       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-COUNTER UNSIGNED-INT.
           01 WS-NUM UNSIGNED-INT.
           01 WS-RESULT UNSIGNED-INT.
           01 WS-NAME PIC A(10).
           01 WS-BIRTHDAY-GREETING PIC A(40).
       PROCEDURE DIVISION.  
           MOVE "Stephanie" TO WS-NAME.       
           PERFORM BIRTHDAY.

           MOVE 0 TO WS-RESULT.
           PERFORM INCREMENT 3 TIMES.
           GOBACK.

       INCREMENT.
           MOVE WS-RESULT TO WS-NUM.
           CALL "increment" USING WS-NUM WS-RESULT.
           DISPLAY WS-RESULT.

       BIRTHDAY.   
           CALL "name" USING WS-NAME WS-BIRTHDAY-GREETING.
           DISPLAY WS-BIRTHDAY-GREETING.

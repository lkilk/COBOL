       IDENTIFICATION DIVISION.
       PROGRAM-ID. "quiz".
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-ANSWER PIC X.
           01 WS-ANT UNSIGNED-INT.
           01 WS-MUSHROOM UNSIGNED-INT.
       PROCEDURE DIVISION.
           DISPLAY "Do you like to build things? Y/N"
           ACCEPT WS-ANSWER
           IF WS-ANSWER = "Y" THEN
             ADD 1 TO WS-ANT
           ELSE
             ADD 1 TO WS-MUSHROOM
           END-IF.
           DISPLAY "Do you prefer being in soil (not on it)? Y/N"
           ACCEPT WS-ANSWER
           IF WS-ANSWER = "Y" THEN
             ADD 1 TO WS-MUSHROOM
           ELSE
             ADD 1 TO WS-ANT
           END-IF.
           DISPLAY "Are you a fan of wasps? Y/N"
           ACCEPT WS-ANSWER
           IF WS-ANSWER = "Y" THEN
             ADD 1 TO WS-MUSHROOM
           ELSE
             ADD 1 TO WS-ANT
           END-IF.
           IF WS-ANT IS GREATER THAN WS-MUSHROOM THEN
             DISPLAY "You are an ant!"
           ELSE
             DISPLAY "You are a mushroom!"
           END-IF.
           
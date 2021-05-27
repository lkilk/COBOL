       IDENTIFICATION DIVISION.
       PROGRAM-ID. "fizzbuzz".
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NUM PIC 999.
           01 WS-RESULT PIC 999.
       PROCEDURE DIVISION.
      *    DISPLAY "Choose your number:".
      *    ACCEPT WS-NUM.
           MOVE 0 TO WS-NUM.
      *    PERFORM FIZZBUZZ 99 TIMES. 
           PERFORM FIZZBUZZ UNTIL WS-NUM = 100.
           STOP RUN.

           FIZZBUZZ.
           ADD 1 TO WS-NUM.
           MOVE ZERO TO WS-RESULT.
           MOVE FUNCTION MOD(WS-NUM 3) TO WS-RESULT.
           ADD FUNCTION MOD(WS-NUM 5) TO WS-RESULT.
           IF WS-RESULT = 0
             DISPLAY "FizzBuzz"
           ELSE IF FUNCTION MOD(WS-NUM 3) = 0 
               DISPLAY "Fizz"
           ELSE IF FUNCTION MOD(WS-NUM 5) = 0
             DISPLAY "Buzz"
           ELSE
             DISPLAY WS-NUM
           END-IF.
           


       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-subtract.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-RESULT UNSIGNED-INT.
       PROCEDURE DIVISION.
      *    It increments the given number by 1
           CALL "subtract" USING 5 2 WS-RESULT.
           CALL "assert-equals" USING WS-RESULT 3.
           
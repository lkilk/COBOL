       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-name.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-RESULT PIC X(50) . 
       PROCEDURE DIVISION.  
           CALL "name" USING "Stephanie" WS-RESULT.
           CALL "assert-equals" USING WS-RESULT "Happy Birthday, "
           "Stephanie".


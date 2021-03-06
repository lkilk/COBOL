       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           REPOSITORY. 
           FUNCTION IS-LEAP-YEAR.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-DATE PIC X(5).
           01 WS-MONTH PIC 99.
           01 WS-DAY PIC 99.
           01 WS-YEAR PIC 9999.
       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE(5:2) TO WS-MONTH.
           MOVE FUNCTION CURRENT-DATE(7:2) TO WS-DAY.
       
           STRING WS-MONTH "-" WS-DAY INTO WS-DATE
           END-STRING.
           
           MOVE FUNCTION CURRENT-DATE(1:4) TO WS-YEAR.

           MOVE '06-14' TO WS-DATE.
           MOVE '2022' TO WS-YEAR.

           CALL'customer-filterer' USING WS-DATE WS-YEAR.
           
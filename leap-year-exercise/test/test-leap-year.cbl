       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-leap-year.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-RESULT PIC AAAAA.
       PROCEDURE DIVISION.

           LEAP-YEARS-ARE-DIVISIBLE-BY-400.
           MOVE "" TO WS-RESULT.
           CALL 'leap-year' USING 2000 WS-RESULT.
           CALL 'assert-equals' USING 'TRUE' WS-RESULT.

           NOT-LEAP-YEAR-IF-DIV-BY-100-AND-NOT-BY-400.
           MOVE "" TO WS-RESULT.
           CALL 'leap-year' USING 1700 WS-RESULT.
           CALL 'assert-equals' USING 'FALSE' WS-RESULT.

           LEAP-YEAR-IF-DIV-BY-4-AND-NOT-400.
           MOVE "" TO WS-RESULT.
           CALL 'leap-year' USING 2004 WS-RESULT.
           CALL 'assert-equals' USING 'TRUE' WS-RESULT.

           NOT-A-LEAP-YEAR-IF-NOT-DIV-BY-4.
           MOVE "" TO WS-RESULT.
           CALL 'leap-year' USING 2009 WS-RESULT.
           CALL 'assert-equals' USING 'FALSE' WS-RESULT.

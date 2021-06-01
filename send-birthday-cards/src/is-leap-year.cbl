       IDENTIFICATION DIVISION.
           FUNCTION-ID. IS-LEAP-YEAR.
       DATA DIVISION. 
           LINKAGE SECTION.
           01 LS-YEAR PIC X ANY LENGTH.
           01 LS-RESULT PIC AAAAA.
       PROCEDURE DIVISION USING LS-YEAR RETURNING LS-RESULT.
           IF FUNCTION MOD(LS-YEAR 400) = 0
               MOVE 'TRUE' TO LS-RESULT
           ELSE IF FUNCTION MOD(LS-YEAR 100) = 0
               MOVE 'FALSE' TO LS-RESULT
           ELSE IF FUNCTION MOD(LS-YEAR 4) = 0
               MOVE 'TRUE' TO LS-RESULT
           ELSE 
               MOVE 'FALSE' TO LS-RESULT
           END-IF.
           
           END FUNCTION IS-LEAP-YEAR. 
           
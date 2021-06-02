       IDENTIFICATION DIVISION.
       FUNCTION-ID. IS-WEREWOLF.
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT F-SUPERMOON-FILE ASSIGN TO 'supermoons.dat'
                   ORGANISATION IS LINE SEQUENTIAL.

       DATA DIVISION. 
           FILE SECTION.            
           FD F-SUPERMOON-FILE.
           01 SMOON-DATE PIC X(10).
           01 SMOON-APP-MAG PIC X(7).  
           WORKING-STORAGE SECTION.
           01 WS-FILE-IS-ENDED PIC 9.
           01 WS-SUPERMOONS.
               05 WS-SUPERMOON OCCURS 661 TIMES 
               ASCENDING KEY IS WS-SMOON
               INDEXED BY SMOON-IDX.
                   10 WS-SMOON PIC X(10).
           LINKAGE SECTION.
           01 LS-DOB PIC X(10).
           01 LS-RESULT PIC AAAAA.
       
       PROCEDURE DIVISION USING LS-DOB RETURNING LS-RESULT.
           
           SET SMOON-IDX TO 0.
           MOVE 0 TO WS-FILE-IS-ENDED.
           OPEN INPUT F-SUPERMOON-FILE.
           PERFORM UNTIL WS-FILE-IS-ENDED = 1
               READ F-SUPERMOON-FILE
                   NOT AT END
                       ADD 1 TO SMOON-IDX
                       MOVE SMOON-DATE TO WS-SUPERMOON(SMOON-IDX)
                   AT END 
                       MOVE 1 TO WS-FILE-IS-ENDED 
               END-READ 
           END-PERFORM.
           CLOSE F-SUPERMOON-FILE.

           SEARCH ALL WS-SUPERMOON
               WHEN WS-SMOON(SMOON-IDX) = LS-DOB 
                   MOVE 'TRUE' TO LS-RESULT
           END-SEARCH. 

           END FUNCTION IS-WEREWOLF. 

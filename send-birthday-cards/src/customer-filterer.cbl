       IDENTIFICATION DIVISION.
       PROGRAM-ID. customer-filterer.
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT F-CUSTOMER-FILE ASSIGN TO 'customers.dat' 
                   ORGANISATION IS LINE SEQUENTIAL.
               SELECT F-CARDS-FILE ASSIGN TO 'cards.dat'
                   ORGANISATION IS LINE SEQUENTIAL.
       DATA DIVISION.
           FILE SECTION.
           FD F-CUSTOMER-FILE.
           01 RC-CUSTOMER-INFO.
               05 RC-CUSTOMER-NAME PIC X(40).
               05 RC-CUSTOMER-ADDRESS PIC X(100).
               05 RC-CUSTOMER-DOB.
                   10 RC-DOB-YEAR PIC 9999.
                   10 RC-DOB-DASH PIC X.
                   10 RC-DOB-MMDD.
                     15 RC-DOB-MONTH PIC 99.
                     15 RC-DOB-SIGN PIC X.
                     15 RC-DOB-DAY PIC 99.
               05 RC-CUSTOMER-JOB PIC X(60).
           FD F-CARDS-FILE.
           01 RC-CARD-CUSTOMER.
               05 RC-CARD-NAME PIC X(40).
               05 RC-CARD-ADDRESS PIC X(100).
               05 RC-CARD-MESSAGE PIC X(56).
           WORKING-STORAGE SECTION.
           01 WS-FILE-IS-ENDED PIC 9.          
           LINKAGE SECTION.
           01 LS-DATE.
               05 LS-MONTH PIC 99.
               05 LS-DASH PIC X.
               05 LS-DAY PIC 99.
       PROCEDURE DIVISION USING LS-DATE.
           MOVE 0 TO WS-FILE-IS-ENDED.
           OPEN INPUT F-CUSTOMER-FILE. 
           OPEN EXTEND F-CARDS-FILE.
           
           PERFORM UNTIL WS-FILE-IS-ENDED = 1
               READ F-CUSTOMER-FILE
                   NOT AT END
                   IF RC-DOB-MMDD = LS-DATE
                       MOVE RC-CUSTOMER-NAME TO RC-CARD-NAME
                       MOVE RC-CUSTOMER-ADDRESS TO RC-CARD-ADDRESS
                       STRING 'Happy Birthday, ' RC-CARD-NAME INTO 
                       RC-CARD-MESSAGE
                       END-STRING 
                       WRITE RC-CARD-CUSTOMER
                       END-WRITE
                   END-IF 
                   AT END 
                   MOVE 1 TO WS-FILE-IS-ENDED 
               END-READ 
           END-PERFORM.
           
           CLOSE F-CUSTOMER-FILE.
           CLOSE F-CARDS-FILE.




       
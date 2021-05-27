       IDENTIFICATION DIVISION.
       PROGRAM-ID. birthday-checker.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-RESULT UNSIGNED-INT.
           LINKAGE SECTION.
           01 LS-NAME PIC A(10).
           01 LS-BIRTHDAY PIC 9999.
           01 LS-DATE PIC 9999.
           01 LS-GREETING PIC A(40).

       PROCEDURE DIVISION USING LS-NAME LS-BIRTHDAY LS-DATE LS-GREETING.
           COMPUTE WS-RESULT = LS-BIRTHDAY - LS-DATE.

           IF WS-RESULT = 1
               STRING "It's almost your birthday, " 
                   FUNCTION TRIM(LS-NAME) "." INTO LS-GREETING 
               END-STRING
               DISPLAY LS-GREETING
               STOP RUN.

           IF LS-BIRTHDAY = LS-DATE
               STRING "Happy Birthday, " FUNCTION TRIM(LS-NAME) "!" 
               INTO LS-GREETING
               END-STRING
               DISPLAY LS-GREETING
           ELSE 
               STRING "It's not your birthday, " FUNCTION TRIM(LS-NAME) 
               "." INTO LS-GREETING 
               END-STRING               
               DISPLAY LS-GREETING
           END-IF.

           
       
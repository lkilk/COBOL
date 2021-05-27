       IDENTIFICATION DIVISION.
       PROGRAM-ID. name.
       DATA DIVISION.
           LINKAGE SECTION.
           01 LS-NAME PIC A(10). 
           01 LS-RESULT PIC A(40).
       PROCEDURE DIVISION USING LS-NAME LS-RESULT.      
      *    DISPLAY "Happy Birthday, " LS-NAME.

           STRING "Happy Birthday, " LS-NAME INTO LS-RESULT
           END-STRING.


           



           

       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC X(20).
           01 WS-PRONOUN-NOM PIC X(4).
           01 WS-PRONOUN-OBJ PIC X(4).
       PROCEDURE DIVISION.
           DISPLAY 'Please enter your name'.
           ACCEPT WS-NAME.
           DISPLAY 'What is your noinative pronoun?'.
           ACCEPT WS-PRONOUN-NOM.
           DISPLAY 'What is your object pronoun?'.
           ACCEPT WS-PRONOUN-OBJ.

           CALL 'pronoun-writer' USING WS-NAME WS-PRONOUN-NOM 
           WS-PRONOUN-OBJ.
           
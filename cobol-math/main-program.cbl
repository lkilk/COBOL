       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-SUM UNSIGNED-INT.
       PROCEDURE DIVISION.
           CALL "square" USING 3 WS-SUM
           DISPLAY WS-SUM. 
           
       
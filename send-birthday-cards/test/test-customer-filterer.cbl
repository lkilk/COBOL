       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-customer-filterer.
       PROCEDURE DIVISION.
           
           CALL 'customer-filterer' USING "03-05" "20210305".

           SET ENVIRONMENT "cards_dat" TO "cards-birthday-0101.dat".
           CALL 'customer-filterer' USING "01-01" "20210101".

  
           SET ENVIRONMENT "cards_dat" TO "cards-tax-day.dat".
           CALL 'customer-filterer' USING "04-06" "20210406".
           
           
           
           
           
           
           

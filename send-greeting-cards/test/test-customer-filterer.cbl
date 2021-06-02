       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-customer-filterer.
       ENVIRONMENT DIVISION.
       PROCEDURE DIVISION.
           
           CALL 'customer-filterer' USING "03-05" "2021".

           SET ENVIRONMENT "cards_dat" TO "cards-birthday-0101.dat".
           CALL 'customer-filterer' USING "01-01" "2021".

           SET ENVIRONMENT "cards_dat" TO "cards-tax-day.dat".
           CALL 'customer-filterer' USING "04-06" "2021".
           
           SET ENVIRONMENT "cards_dat" TO "cards-leapyear-0301.dat".
           CALL 'customer-filterer' USING "03-01" "2022".
           
           SET ENVIRONMENT "cards_dat" TO "cards-leapyear-0229.dat".
           CALL 'customer-filterer' USING "02-29" "2024".
           
           SET ENVIRONMENT "cards_dat" TO "werewolfs.dat".
           CALL "customer-filterer" USING "12-17", "1937". 
           

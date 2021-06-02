       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-is-supermoon.
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           REPOSITORY.
           FUNCTION IS-SUPERMOON.
       PROCEDURE DIVISION.
           
           CALL 'assert-equals' USING IS-SUPERMOON('1922-04-11')
            'TRUE ' .

           CALL 'assert-equals' USING IS-SUPERMOON('1922-04-28')
            'FALSE' .

       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-is-werewolf.
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           REPOSITORY.
           FUNCTION IS-WEREWOLF.
       PROCEDURE DIVISION.
           
           CALL 'assert-equals' USING IS-WEREWOLF('1922-04-11')
            'TRUE ' .

           CALL 'assert-equals' USING IS-WEREWOLF('1922-04-28')
            'FALSE' .

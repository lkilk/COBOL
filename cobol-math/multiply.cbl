       IDENTIFICATION DIVISION.
       PROGRAM-ID. multiply.
       DATA DIVISION.
           LINKAGE SECTION.
           01 LS-NUM-1 UNSIGNED-INT.
           01 LS-NUM-2 UNSIGNED-INT.
           01 LS-SUM UNSIGNED-INT.
       PROCEDURE DIVISION USING LS-NUM-1 LS-NUM-2 LS-SUM.
           COMPUTE LS-SUM = LS-NUM-1 * LS-NUM-2.

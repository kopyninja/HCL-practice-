       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING-CONCATENATION.
       AUTHOR. KAUSHIK. 

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  STR1        PIC X(10).
       01  STR2        PIC X(10).
       01  RESULT      PIC X(20).
       01  STRLEN     PIC 9(2).

       PROCEDURE DIVISION.
           DISPLAY "ENTER FIRST STRING: "
           ACCEPT STR1

           DISPLAY "ENTER SECOND STRING: "
           ACCEPT STR2

           STRING
               STR1 DELIMITED BY SPACE
               STR2 DELIMITED BY SPACE
               INTO RESULT
           END-STRING

           COMPUTE STRLEN = FUNCTION LENGTH(RESULT)

           DISPLAY "CONCATENATED STRING: " RESULT
           DISPLAY "LENGTH OF STRING: " STRLEN

           STOP RUN.

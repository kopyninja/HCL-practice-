       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACT.
       AUTHOR. KAUSHIK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM        PIC 9(3).
       01 I          PIC 9(3).
       01 FACT       PIC 9(10) VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY "ENTER A NUMBER (UP TO 3 DIGITS):".
           ACCEPT NUM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > NUM
               COMPUTE FACT = FACT * I
           END-PERFORM.

           DISPLAY "FACTORIAL IS: " FACT.
           STOP RUN.



       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISIBLE-NUMBERS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM        PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "NUMBERS DIVISIBLE BY 2, 3 AND 17 (1-1000):".

           PERFORM NUM FROM 1 BY 1 UNTIL NUM > 1000
               IF NUM MOD 2 = 0
                  AND NUM MOD 3 = 0
                  AND NUM MOD 17 = 0
                   DISPLAY NUM
               END-IF
           END-PERFORM.

           STOP RUN.

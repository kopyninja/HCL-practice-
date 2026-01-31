 IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME-NUMBERS.
       AUTHOR.KAUSHIK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM        PIC 9(3).
       01  DIVISOR    PIC 9(3).
       01  REM        PIC 9(3).
       01  FLAG       PIC 9 .

       PROCEDURE DIVISION.
           DISPLAY "THE PRIME NUMBERS ARE :"

           PERFORM VARYING NUM FROM 2 BY 1 UNTIL NUM > 200
               MOVE 0 TO FLAG
               PERFORM VARYING DIVISOR FROM 2 BY 1
                   UNTIL DIVISOR >= NUM
                   COMPUTE REM = FUNCTION MOD(NUM, DIVISOR)
                   IF REM = 0
                       MOVE 1 TO FLAG
                       EXIT PERFORM
                   END-IF
               END-PERFORM

               IF FLAG = 0
                   DISPLAY NUM
               END-IF
           END-PERFORM

           STOP RUN.

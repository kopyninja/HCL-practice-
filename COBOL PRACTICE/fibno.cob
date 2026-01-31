IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A        PIC 9(3) VALUE 0.
       01  B        PIC 9(3) VALUE 1.
       01  C        PIC 9(3).
       01  WS-SUM   PIC 9(5) VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY "FIBONACCI SERIES UP TO 100:"
           DISPLAY A
           DISPLAY B

           PERFORM UNTIL C > 100
               COMPUTE C = A + B
               IF C <= 100
                   DISPLAY C
                   ADD C TO WS-SUM
               END-IF
               MOVE B TO A
               MOVE C TO B
           END-PERFORM

           DISPLAY "SUM OF FIBONACCI NUMBERS IS: " WS-SUM

           STOP RUN.

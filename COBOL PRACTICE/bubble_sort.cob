       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLESORT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBERS.
          05 NUM        PIC 9(4) OCCURS 5 TIMES.
       01 I             PIC 9 VALUE 1.
       01 J             PIC 9 VALUE 1.
       01 TEMP          PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER 5 NUMBERS:".

           PERFORM I FROM 1 BY 1 UNTIL I > 5
               ACCEPT NUM(I)
           END-PERFORM.

           PERFORM I FROM 1 BY 1 UNTIL I > 4
               PERFORM J FROM 1 BY 1 UNTIL J > 5 - I
                   IF NUM(J) > NUM(J + 1)
                       MOVE NUM(J) TO TEMP
                       MOVE NUM(J + 1) TO NUM(J)
                       MOVE TEMP TO NUM(J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM.

           DISPLAY "SORTED ARRAY:".
           PERFORM I FROM 1 BY 1 UNTIL I > 5
               DISPLAY NUM(I)
           END-PERFORM.

           STOP RUN.

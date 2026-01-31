       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASSIGN-GRADE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MARKS    PIC 9(3).
       01  GRADE    PIC X.

       PROCEDURE DIVISION.
           DISPLAY "ENTER THE MARKS: "
           ACCEPT MARKS

           IF MARKS >= 90
               MOVE 'A' TO GRADE
           ELSE
               IF MARKS >= 80
                   MOVE 'B' TO GRADE
               ELSE
                   IF MARKS >= 70
                       MOVE 'C' TO GRADE
                   ELSE
                       IF MARKS >= 60
                           MOVE 'D' TO GRADE
                       ELSE
                       IF MARKS >= 50
                           MOVE 'E' TO GRADE
                       ELSE
                           MOVE 'F' TO GRADE
                           END-IF
                       END-IF
                   END-IF
               END-IF
           END-IF

           DISPLAY "GRADE IS: " GRADE

           STOP RUN.


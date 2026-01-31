 IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINT-1-TO-100.
       AUTHOR. KAUSHIK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM   PIC 9(3).

       PROCEDURE DIVISION.
           MOVE 1 TO NUM

           PERFORM UNTIL NUM > 100
               DISPLAY NUM
               ADD 1 TO NUM
           END-PERFORM

           STOP RUN.

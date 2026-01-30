       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU-CHOICE.
       AUTHOR. KAUSHIK. 

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE        PIC 9.

       PROCEDURE DIVISION.
           DISPLAY "1. DEPOSIT".
           DISPLAY "2. WITHDRAW".
           DISPLAY "3. BALANCE".
           DISPLAY "ENTER YOUR CHOICE: ".
           ACCEPT CHOICE.

           EVALUATE CHOICE
               WHEN 1
                   DISPLAY "DEPOSIT SELECTED"
               WHEN 2
                   DISPLAY "WITHDRAW SELECTED"
               WHEN 3
                   DISPLAY "BALANCE DISPLAYED"
               WHEN OTHER
                   DISPLAY "INVALID CHOICE"
           END-EVALUATE.

           STOP RUN.

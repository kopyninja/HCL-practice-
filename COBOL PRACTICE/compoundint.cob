       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPOUND-INTEREST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  PRINCIPAL     PIC 9(6).
       01  RATE          PIC 9(2)V9(2).
       01  TIME          PIC 9(2).
       01  AMOUNT        PIC 9(8)V9(2).
       01  INTEREST      PIC 9(8)V9(2).

       PROCEDURE DIVISION.
           DISPLAY "ENTER PRINCIPAL AMOUNT: "
           ACCEPT PRINCIPAL

           DISPLAY "ENTER RATE OF INTEREST: "
           ACCEPT RATE

           DISPLAY "ENTER TIME (IN YEARS): "
           ACCEPT TIME

           COMPUTE AMOUNT =
               PRINCIPAL * FUNCTION POWER((1 + RATE / 100), TIME)

           COMPUTE INTEREST = AMOUNT - PRINCIPAL

           DISPLAY "COMPOUND INTEREST IS: " INTEREST

           STOP RUN.

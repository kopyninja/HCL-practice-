       IDENTIFICATION DIVISION.
       PROGRAM-ID. CELSIUS-TO-FAHRENHEIT.
       AUTHOR. KAUSHIK.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CELSIUS      PIC 9(3)V9(2).
       01  FAHRENHEIT   PIC 9(3)V9(2).
       01  TEMP        PIC 9(4)V9(2).

       PROCEDURE DIVISION.
           DISPLAY "Enter temperature in Celsius: "
           ACCEPT CELSIUS

           COMPUTE FAHRENHEIT = ( CELSIUS * 9 / 5 ) + 32
           
           DISPLAY "Temperature in Fahrenheit is: " FAHRENHEIT

           STOP RUN.

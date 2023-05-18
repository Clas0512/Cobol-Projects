       IDENTIFICATION DIVISION.
          PROGRAM-ID.  CALCULATOR.
          AUTHOR Adem Berke Nargül.
          DATE-WRITTEN 18.05.2023

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 RESULT PIC 9(10).
       01 OPERATION PIC X.
       PROCEDURE DIVISION.

           DISPLAY "Enter the first number: ".
           ACCEPT NUM1.
           DISPLAY "Enter the second number: ".
           ACCEPT NUM2.
           DISPLAY "Enter the operation (+, -, *, /): ".
           ACCEPT OPERATION.

           IF OPERATION = '+'
               COMPUTE RESULT = NUM1 + NUM2
               *> ADD NUM1 TO NUM2 GIVING RESULT
           ELSE IF OPERATION = '-'
               COMPUTE RESULT = NUM1 - NUM2
               *> SUBTRACT NUM2 FROM NUM1 GIVING RESULT
           ELSE IF OPERATION = '*'
               COMPUTE RESULT = NUM1 * NUM2
               *> MULTIPLY NUM1 BY NUM2 GIVING RESULT
           ELSE IF OPERATION = '/'
               COMPUTE RESULT = NUM1 / NUM2
               *> DIVIDE NUM1 BY NUM2 GIVING RESULT           
           ELSE
               DISPLAY "Invalid operation."
           END-IF.

           DISPLAY 'Result: ', RESULT.
           STOP RUN.

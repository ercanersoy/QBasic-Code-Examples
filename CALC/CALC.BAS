' CALC.BAS - Calculator
' Copyright (C) 2020-2021 Ercan Ersoy
' This code licensed by MIT License.

DIM number1 AS DOUBLE
DIM number2 AS DOUBLE
DIM operator AS STRING
DIM result AS DOUBLE
DIM selection AS STRING

CLS

PRINT "Calculator"
PRINT "Copyright (C) 2020-2021 Ercan Ersoy"

DO
   DO
      INPUT "Number 1: ", number1
      INPUT "Number 2: ", number2
      INPUT "Operator: ", operator

      IF operator = "+" THEN
         result = number1 + number2

         EXIT DO
      ELSEIF operator = "-" THEN
         result = number1 - number2

         EXIT DO
      ELSEIF operator = "*" THEN
         result = number1 * number2

         EXIT DO
      ELSEIF operator = "/" THEN
         result = number1 / number2

         EXIT DO
      ELSE
         PRINT "Wrong operator!"
         SOUND 100, 1
      END IF
   LOOP

   PRINT STR$(number1) + " " + operator + STR$(number2) + " =" + STR$(result)


   PRINT

   DO
      PRINT "Calculate again? (Y/N)"
      selection = UCASE$(INPUT$(1))

      IF selection = "Y" THEN
         CLS

         EXIT DO
      ELSEIF selection = "N" THEN
         CLS

         END
      ELSE
         PRINT "Wrong selection!"
         SOUND 100, 1
      END IF
   LOOP
LOOP

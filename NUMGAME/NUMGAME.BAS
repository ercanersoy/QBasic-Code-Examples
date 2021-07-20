' NUMGAME.BAS - Number game
' Copyright (C) 2020-2021 Ercan Ersoy
' This code licensed by MIT License.

DIM count AS INTEGER
DIM number AS INTEGER
DIM i AS INTEGER
DIM estimatednumber AS INTEGER
DIM SELECTION AS STRING

RANDOMIZE TIMER

CLS

PRINT "Number Game"
PRINT "Copyright (C) 2020-2021 Ercan Ersoy"

inputnumber:

INPUT "Estimate count: ", count

IF count < 1 OR count > 10 THEN
   SOUND 100, 1
   PRINT "Wrong count! Count can be between 0 and 11."
   GOTO inputnumber
END IF

number = INT(RND * 100 + 1)

FOR i = 1 TO count
   INPUT "Guess the number (1-100):", estimatednumber

   IF estimatednumber = number THEN
      PRINT "Congratulations! The random number has been estimated."
      GOTO againprompt
   ELSEIF estimatednumber < number THEN
      PRINT "The random number is greater than estimated number."
   ELSE
      PRINT "The random number is little than estimated number."
   END IF
NEXT i

PRINT "You have been lost the game."

againprompt:

PRINT "Play again? (Y/N)"

SELECTION = UCASE$(INPUT$(1))

IF SELECTION = "Y" THEN
   GOTO inputnumber
ELSEIF SELECTION <> "N" THEN
   PRINT "Wrong selection!"

   SOUND 100, 1

   GOTO againprompt
END IF

CLS

END

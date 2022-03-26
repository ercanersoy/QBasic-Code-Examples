' MESSAGE.BAS - Display a Message
' Copyright (c) 2022 Ercan Ersoy
' This code licensed by MIT License.

DECLARE SUB updatemessage ()
DECLARE SUB displaymessage ()

DIM choice AS INTEGER
DIM SHARED message AS STRING * 512

SCREEN 0

DO

CLS

OPEN "MESSAGE.DAT" FOR BINARY ACCESS READ AS #1 LEN = LEN(message)

GET #1, 1, message

CLOSE #1

PRINT "Display a Message"
PRINT "Copyright (c) 2022 Ercan Ersoy"

PRINT "1) Display the Message"
PRINT "2) Update the Message"
PRINT "3) Exit"

choice = VAL(INPUT$(1))

SELECT CASE choice
   CASE 1:
     displaymessage
   CASE 2:
     updatemessage
   CASE 3:
     CLS

     END
   CASE ELSE:
     SOUND 50, 1
     PRINT "Wrong choice!"
END SELECT

LOOP

SUB displaymessage
  CLS

  PRINT "The Message:"
  PRINT
  PRINT message
  PRINT
  PRINT "Press any key to continue!"

  SLEEP
END SUB

SUB updatemessage
  CLS

  INPUT "Message: ", message

  OPEN "MESSAGE.DAT" FOR BINARY ACCESS WRITE AS #1 LEN = LEN(message)

  PUT #1, 1, message

  CLOSE #1

  PRINT
  PRINT "Press any key to continue!"

  SLEEP
END SUB


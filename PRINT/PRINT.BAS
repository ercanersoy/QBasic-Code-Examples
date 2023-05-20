' PRINT.BAS - Print Lines to Default Printer
' Copyright (c) 2023 Ercan Ersoy
' This code licensed by MIT License.

DIM SHARED toprint AS STRING * 72
DIM choice AS INTEGER

SCREEN 0
WIDTH 80, 25

WIDTH LPRINT 80

DO
  CLS

  PRINT "Line to print"
  LINE INPUT ":"; toprint

  DO
    CLS
    PRINT "New page?"
    PRINT "Y-Yes N-No Q-Quit to the program "
    choice = ASC(INPUT$(1))

    IF choice = 89 OR choice = 121 THEN
      LPRINT toprint
      LPRINT CHR$(12),
      EXIT DO
    ELSEIF choice = 78 OR choice = 110 THEN
      LPRINT toprint
      EXIT DO
    ELSEIF choice = 81 OR choice = 113 THEN
      END
    ELSE
    END IF
  LOOP
LOOP


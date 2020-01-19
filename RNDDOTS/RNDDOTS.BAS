' RNDDOTS.BAS - Randomize dots with color
' Copyright (C) 2020 Ercan Ersoy
' This code licensed by MIT License.

SCREEN 13

RANDOMIZE TIMER

DO
   PSET (INT(RND * 320), INT(RND * 200)), INT(RND * 256)
LOOP WHILE INKEY$ <> CHR$(27)

SCREEN 0

WIDTH 80, 25

END

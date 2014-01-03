10 GOSUB 9000
20 GOSUB 100
30 LV = 4: GOSUB 1000
90 GOTO 10000
100 REM ===== LOAD CHARACTERS ============
110 FOR J = 35 TO 42
120 FOR I = 0 TO 7
130 READ Z: POKE 46080 + J*8 + I, Z
140 NEXT I: NEXT J
150 RETURN
200 DATA 0, 63, 16, 63, 2, 63, 16, 63
210 DATA 21, 42, 21, 42, 21, 42, 21, 42
220 DATA 0, 12, 18, 18, 18, 18, 12, 0
230 DATA 0, 45, 63, 12, 18, 18, 12, 0
240 DATA 0, 3, 26, 39, 39, 26, 3, 0
250 DATA 0, 12, 18, 18, 12, 63, 45, 0
260 DATA 0, 48, 22, 57, 57, 22, 48, 0
270 DATA 21, 42, 21, 42, 21, 42, 21, 42
1000 REM ==== LOAD LEVEL AND DRAW IT ======
1003 READ NL: IF LV > NL THEN PRINT @12, 10; "CONGRATULATIONS!": PRINT @7, 12; "YOU HAVE FINISHED THE GAME!": WAIT 1000: END
1005 IF LV = 1 THEN GOTO 1030
1010 FOR L = 1 TO LV - 1
1012 READ SX: READ SY: READ NS
1014 FOR N = 1 TO NS
1016 READ L$: NEXT N, L
1030 READ SX: READ SY: READ NS
1035 X = SX: Y = SY: W% = 1
1037 PO% = 0
1040 FOR N = 1 TO NS
1050 READ L$
1060 LE = LEN(L$)
1070 FOR P = 1 TO LE
1080 C$ = MID$(L$,P,1): AC% = ASC(C$)
1090 IF AC% = 78 THEN X = SX: Y = Y + 1: W% = 1: GOTO 1190
1100 IF AC% = 88 THEN PRINT @X,Y;"%": X = X + 1: W% = 0: PO% = PO% + 1: GOTO 1190
1110 IF AC% = 80 THEN PRINT @X,Y;"$": X = X + 1: W% = 0: GOTO 1190
1120 IF AC% = 66 THEN BX% = X: BY% = Y: X = X + 1: W% = 0: GOTO 1190
1170 NU = VAL(C$): CH$ = " ": IF W% = 1 THEN CH$ = "#"
1080 IF NU > 0 THEN FOR T = 1 TO NU: PRINT @X,Y; CH$: X = X + 1: NEXT T
1090 W% = 1 - W%
1190 NEXT P
1200 NEXT N
1210 PRINT @BX%,BY%;"&"
1990 RETURN
2000 REM ======== LEVELS DATA ==========
2002 DATA 4
2005 REM START_X, START_Y, BAGER_X, BAGER_Y, STRINGS IN LEVEL
2009 REM DATA 12, 7, 1, "9N1B1P3X01N9"
2010 DATA 12, 7, 1, "035N03131N0311PP04N0312P1P11N0311P0131N422P16N1B425XX01N2902XX01N019021XX01N09016"
2020 DATA 15, 9, 1, "902N1XX015B01N1XX011P1P12N15P12N1211P12N12122N142N6"
2030 DATA 16, 8, 1, "014N224N13P21N11PP01B11N11P1211N141X01N21P1XX01N0122XX01N026"
2040 DATA 14, 7, 1, "074N07121N8P11N12P61N125P11N191N12521N15X0121N14X0221N121X0231N1B2241N272N019"
9000 REM ====== ORIC INITIALIZATION ====
9010 CLS
9020 POKE #26A,#A
9100 RETURN
10000 REM ======= GAME MAIN LOOP =============
10010 DX% = 0: DY% = -1: DI% = 0: FI$ = "&'()": F$ = MID$(FI$, DI%+1, 1)
10020 PRINT @BX%,BY%;F$
10030 H1% = 0
10100 PRINT @9,0;"LEVEL:" : PRINT @15,0;LV
10101 PRINT @24,0;"LEFT:" : PRINT @29,0;PO%
10105 K$ = KEY$
10110 IF LEN(K$) = 0 THEN WAIT 10: GOTO 10105
10120 AC% = ASC(K$)
10200 IF AC% = 44 OR AC% = 8 THEN DX% = -1: DY% = 0: DI% = 3
10210 IF AC% = 46 OR AC% = 9 THEN DX% = 1: DY% = 0: DI% = 1
10220 IF AC% = 97 OR AC% = 11 THEN DX% = 0: DY% = -1: DI% = 0
10220 IF AC% = 122 OR AC% = 10 THEN DX% = 0: DY% = 1: DI% = 2
10230 MU% = 0: HO% = 0: E2% = 0: EM% = 0: MM% = 0: MO% = 0
10300 F$ = MID$(FI$, DI%+1, 1): PRINT @BX%,BY%;F$
10320 SC% = SCRN(BX%+DX%, BY%+DY%): S2% = SCRN(BX%+DX%+DX%, BY%+DY%+DY%)
10340 IF SC% = 36 OR SC% = 42 THEN MU% = 1: REM MUD!
10350 IF SC% = 37 OR SC% = 42 THEN HO% = 1: REM HOLE!
10360 IF SC% = 32 OR SC% = 37 THEN EM% = 1: REM EMPTY!
10370 IF S2% = 32 OR S2% = 37 THEN E2% = 1: REM EMPTY2!
10380 IF MU% AND E2% THEN MM% = 1: REM MOVE MUD!
10390 IF MM% OR EM% THEN MO% = 1: REM MOVE!
10400 LA$ = "%": IF H1% = 0 THEN LA$ = " "
11000 IF MO% THEN H1% = HO%: PRINT @BX%,BY%;LA$: BX% = BX% + DX%: BY% = BY% + DY%
11010 PRINT @BX%,BY%;F$
11020 IF MM% AND S2% = 32 THEN PRINT @BX%+DX%,BY%+DY%;"$"
11020 IF MM% AND S2% = 37 THEN PRINT @BX%+DX%,BY%+DY%;"*"
11023 IF SC% = 42 AND S2% = 32 THEN PO% = PO% + 1
11025 IF SC% = 36 AND S2% = 37 THEN PO% = PO% - 1
11030 IF PO% = 0 THEN LV = LV + 1: RESTORE: GOSUB 100: GOSUB 1000: K$ = KEY$: GOTO 10000
11900 REM ==== LOOP BACK ====
11990 GOTO 10100
30000 REM ======== TODO =========
30005 REM ADD SCORES: MOVEMETS? TIME? ETC.
30030 REM ADD MORE LEVELS
30040 REM MAKE ALL GREAPHICS 2x2 CHARACTERS?
30050 REM STARTING SPLASH SCREEN
30060 REM REDEFINE KEYS?
30070 REM KEY FOR RESTARTING LEVEL? UNDO?

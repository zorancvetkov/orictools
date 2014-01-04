10 GOSUB 9000
20 GOSUB 100
30 LV = 1: GOSUB 1000
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
1003 READ NL: IF LV > NL THEN CLS: PRINT @12, 10; "CONGRATULATIONS!": PRINT @7, 12; "YOU HAVE FINISHED THE GAME!": WAIT 1000: END
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
2002 DATA 50
2005 REM START_X, START_Y, BAGER_X, BAGER_Y, STRINGS IN LEVEL
2010 DATA 12, 8, 1, "035N03131N0311PP04N0312P1P11N0311P0131N422P16N1B425XX01N2902XX01N019021XX01N09016"
2020 DATA 14, 9, 1, "902N1XX015B01N1XX011P1P12N15P12N1211P12N12122N142N6"
2030 DATA 16, 8, 1, "014N224N13P21N11PP01B11N11P1211N141X01N21P1XX01N0122XX01N026"
2040 DATA 14, 6, 1, "074N07121N8P11N12P61N125P11N191N12521N15X0121N14X0221N121X0231N1B2241N272N019"
2050 DATA 13, 8, 1, "034N03121N41P04N1B4P21N241X11N0112P021X05N01231X51N0219011N0224321N03614"
2060 DATA 11, 7, 2, "075N0612X21N0611P01P11N0612121N0612B21N0161P01P15N0117161N2P02P2X01X2212N12P5X6X01N14"
2060 DATA          "82XX01N666"
2070 DATA 11, 6, 2, "5N13905N11196N111331P25N142X021P24N111P02XX121P23N131XXX221P22N111P03421P21N1111P1242"
2070 DATA          "22N16211221B01N43P2224N0356XXX01N07902"
2080 DATA 13, 7, 1, "905N19031N12812N11P1P3P41N122113121N1122512N12191N18P31N1XBX04P0212N1XXX012141N526"
2090 DATA 13, 7, 1, "084N06322N0523P11N0243P21N0213P21P12N31P11P0231N11B1172N111121141N13XX43N3XXXX13N027"
2100 DATA 12, 8, 1, "014N22902N19041N11X01114221N1XBX4121X11N11X012351N16P1P41N411P1P1P04N03171N039"
2110 DATA 13, 7, 1, "052N5B14N13241N11P032P14N143PP31N2XX6P21N011XX014311N0163121N05261N0622X12N07231N085"
2120 DATA 7, 7, 2, "09037N064212127N061242181N82P41113121N15X011PPP02P01X0512N1902121113121N123X0114P5X41"
2120 DATA          "N4132X1P342P02N061B21422221N063XXX1344N086"
2130 DATA 8, 5, 3, "901N1512324N15X4421N11115P3P34N11111X1X01322P0121N11111X1X03P032X1P02N11112224P2P31N1"
2130 DATA          "112121X231P01P12N1322212X012P31N11X2121X21141P12N1X1X11225P1P111B01N11X122P313P2P12N1"
2130 DATA          "X1X113P03P17N11X2362N32XX08N026"
2140 DATA 7, 7, 2, "09074N57524N1393151N1111191111311N15P11712X0111N52P03133X0213N042P11118X011111N051B02"
2140 DATA          "161431N05461113112N090613131N09069"
2150 DATA 14, 8, 1, "335N11531N14121B01N12P52N2P11X22N12P021X01N2X2112N01241N026"
2160 DATA 9, 5, 3, "49045N1290631N1617P51N1123X141P013111N11141421P111P11N1111112X0211X221111N11311XX3122"
2160 DATA          "41N13P190241N111P01P11622112N22P21413P31N01221111411P0113N0228151N032313B24N046XXXXX0"
2160 DATA          "1N097"
2170 DATA 5, 3, 4, "0197903N222399011N1817291N1341114P1P211241N2145P41P11211211N0116P16711211N01121244612"
2170 DATA          "41N011121P01415P411211N01121212131111211111211N011P141P01111111213141N011812X71111211"
2170 DATA          "N011214P02X01X11P1X311211N0175X21211341N07172P111161N077421161N09041B4P1112XXX01N0904"
2170 DATA          "31P2221XXX01N0906222X25N09074XX21N0909016"
2180 DATA 9, 6, 3, "90903N1909011N1901B81N11P01X11P0211X1P0321N1211X011121X211121N121X111121X1P011121N11P"
2180 DATA          "0412P01X23P11N121X111121X1P011P21N1211X011121XX112P11N11P01X111213P011P21N1909011N190"
2180 DATA          "9011N90903"
2190 DATA 10, 6, 2, "02902N0213B2121N021312127N02132512X11N0211P02314XXX01N3P21234X11N13P5126N13281N11P029"
2190 DATA          "1N13128N13P21N341N026"
2200 DATA 13, 6, 2, "4N128N16P22N12532N1412P32N11B21211P21N111212231N1412321N191P11N4111142N0311X52N031X1X"
2200 DATA          "X04N036"
2210 DATA 10, 7, 2, "09019N02971N0216P4P31N3123123P0111N11X211P03P211111N1X1X113P81N312171121N02121414121N"
2210 DATA          "0212112112321N0217X71N02124XBX07N02425"
2220 DATA 11, 8, 1, "903N1313126N1904111N11112211331N111133XX01P21N1432X011P11N157P21N1218P22N12184N904"
2230 DATA 8, 5, 3, "063N06112N72903N1516161N190311141N115P021111111124N111114111112X0121X11N13141111212B1"
2230 DATA          "121N1X022311112X0241N1X013111111181N41P111111112521N0112PPP0111613121N0113P1111222131"
2230 DATA          "X11N013311834N03131N035"
2240 DATA 14, 7, 2, "025N02132N31124N191N1312211N11P03P11X01N1313XX01N13P1111X01N232P21N011B041111N0132131"
2240 DATA          "N065"
2250 DATA 11, 6, 2, "909N17181N11131201X012111N13141121XP11N1233122P0111N13132212P11N162X211PP11N31211X212"
2250 DATA          "3N0214621N0219031N0222622N0319011N03903"
2260 DATA 12, 8, 1, "047N04151N0412121N51315N1XX2P3P2XX01N1XX1P1P1P1P1X01N32P3P14N0231213N04141N046"
2270 DATA 6, 4, 4, "0449074N5290921N1909081N1321231111111111141N21232905121N011112B22111111212141N0111121"
2270 DATA          "311X1X9121N0111141111112151131N01112XX311X2111311131N01121XX04114110113111N0111P04213"
2270 DATA          "4X01X011131N0116P154X11111111N0113P215P213151N0111P031P3P11252121N01141P03112P1137N01"
2270 DATA          "41P212114N04291N05902"
2280 DATA 12, 5, 2, "903N19011N19011N111122211N111122211N17212N1322221N32251N0112P122113N0122P123XX01N0222"
2280 DATA          "P122XX01N0322P121XX01N0422P15N0522P41N062311B01N078"
2290 DATA 9, 8, 2, "90904N1909021N1912111111111N11213X01121P1P1P11N11221XX022P1111P0111N15XX0222131P11N19"
2290 DATA          "09021N3252523N0243434"
2300 DATA 5, 4, 4, "0249064N02126901126N021790371N021221190611211N021313P1P162P111211N022211P06XX211P01P0"
2300 DATA          "11211N02122P12XXX01X221P111211N021521XXX0321411211N02111222XX0322P11111211N021143X034"
2300 DATA          "11P2141N01211XX43421126N2X12X42423P51N1X3412423P01P1P21N1X81421P111P1P01P11N2X056221P"
2300 DATA          "311P21N01334229041N090190901"
2310 DATA 8, 3, 4, "4N1290902N1419071N1X01217P01P01P01PP11N31222111P1P1P2111N111122121111P111P21N13222111"
2310 DATA          "P111P11P11N141519011N211P0122111901N0111112211361N01111515P3B01N011111111X01421P12N01"
2310 DATA          "1111111111XXX0121XX01N011531X01X0122X01N01113113XXX22XX01N0112121112161N01112P11X1X91"
2310 DATA          "N0115905N01124N014"
2320 DATA 15, 7, 1, "024N323N14P12N12P1121N1211P21N112P0121N1114B01N13212N5X1X01N0411X11N041X21N045"
2330 DATA 15, 7, 1, "036N02241N33B11N13P0211N11P3111N1122111N1121211N11P2121N1112P21N6XX01N051XX01N054"
2340 DATA 14, 8, 1, "901N1XXX51N1X1X01P1P12N1X1XP1P01P11N1XXX011P31N2411P11N0122PPP0112N0226B01N039"
2350 DATA 9, 7, 2, "05907N0452721N0366231N0253PPP011P41N013212P111P34N34B1144N11XX1P1134N11XXP01P23N1XX01"
2350 DATA          "X23N1XX23N6"
2360 DATA 11, 7, 2, "01907N0116171N011P2P13P011P0111N0112221221PB01N2121P82N1X1X012P17N1X3P13N2X32N012XX02"
2360 DATA          "N021XX01N024"
2370 DATA 11, 6, 2, "074N07121N828N19071N12P1P11211P1P21N11P1P21212P1P11N12P13231P21N11P12X0121X021P11N122"
2370 DATA          "XX0121XX0221N112XXX0121XXX0211N19071N1612161N161B1161N909"
2380 DATA 4, 4, 3, "885N131218131N169011P12N5905111N04181P3P21N04122XX0312P01P11N04121XXXXX011151N04122XX"
2380 DATA          "X0232P11N0143161P39N01121118P1P01P01XX012113N011B65611X01X3X11N014112138XX02111111N04"
2380 DATA          "1141P90311131N0412P2P01P1P219014N041211P1P216641N0419053411211N049076141N0909086"
2390 DATA 10, 8, 2, "017N01151N011212903N011132P6P21N221311P01P1P01P11N1XXXX6P1P2P11N1XXX041P01P111P0111N1"
2390 DATA          "XX01219011N2XX012903N014"
2400 DATA 6, 2, 4, "09099N909013131N190224171N1213222532121N1121P112241312121N13PPP224211111221N41P224241"
2400 DATA          "2121N34242421221N24242423121N14242424121N13242424221N12242424231N12142424241N16242422"
2400 DATA          "121N15242423121N232424212X31N31242422XXX0121N53342320121N041925321N043629021N0689031N"
2400 DATA          "0904905"
2410 DATA 13, 8, 1, "066N01643N22X81N1222P111P11N21X2P011PP0111N121111PP0131N12XX0153N12X08N21X01N015"
2420 DATA 6, 8, 2, "90902N1905138N111XXXX6P11114131N111X02X0412112P1P51N12XXX01212P1123P1121N82114P1144N0"
2420 DATA          "90114P211231N0901114P112P1P11N09011712131N0901907"
2430 DATA 5, 3, 5, "9090903N13151515161N13151515161N11P11212121212121211X11N1312121212121212131N131212121"
2430 DATA          "2121212131N1312121212121212131N1312121212121212131N1312121212121212131N13121212121212"
2430 DATA          "12131N1312121212121212131N11P11212121B112121211X11N1312121212121212131N13121212121212"
2430 DATA          "12131N1312121212121212131N1312121212121212131N1312121212121212131N16151515131N1615151"
2430 DATA          "5131N9090903"
2440 DATA 13, 7, 2, "086N62141N1442P11N111412211N1XPX01P5P11N11X3P1P1211N1X1X05P1P11N11X113141N1XPX0136N20"
2440 DATA          "2N014"
2450 DATA 10, 6, 2, "908N44B022121N33P1261N23P124213N13P12422111N12P12423P11N11P1242211111N12242221111N172"
2450 DATA          "231111N422331111N031029011N037XXX05N092XXX01N09015"
2460 DATA 10, 3, 3, "075N07131N07137N0711P1P1P1P11N0172P1P43N012321P1P1P1P31N0114X01351P11N0111342XXX01111"
2460 DATA          "1N01112421X1X011P11N01111422XX021111N0111132X2X022P11N01142X1X121P31N01132X1X122113N2"
2460 DATA          "222X122P21N122422P0121N11XXX325P11N2X1X222P11P01P01N011XXX121P111P1P11N016B91N06903"
2470 DATA 10, 5, 2, "8N1XX41N1X11P21N1XX2P11N1212P01N521N041P11N0411P0904N041P9041N0419051N0490115N08181N0"
2470 DATA          "8181N08405N09023"
2480 DATA 10, 5, 3, "06904N0619021N0433P2P1P21N0413P3P1P1P11N041221P111311N0412123111111N04112P4P2111N0142"
2480 DATA          "P211P3111N0112154P31N24P112P1132N11P1P11P01211P22N1XXX013432N1X01X0212XXXP12N1X01X012"
2480 DATA          "1XXXX21N1XX31XXX04N903"
2490 DATA 5, 3, 4, "075N0713908N4311X9081N1XX0131113P2P242P11N1XX055121212P15N1XX2XX012P16P0121P0131N13PX"
2490 DATA          "X01P022121211251N311XX0121814212N02114290111121P01N0211P2P212151131P12N0216221221181N"
2490 DATA          "02913112721N03121313111123141N03121111111312111111112N0314136313111N031183904N0312131"
2490 DATA          "312131311B01N0323134313132N039012904"
2500 DATA 15, 8, 1, "018N0113121N0122P21N011XX1121N0111X02P03N52XX01N12P2P1X01N11P1P23N1B24N5"
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
30040 REM MAKE ALL GREAPHICS 2x2 CHARACTERS?
30050 REM STARTING SPLASH SCREEN
30060 REM REDEFINE KEYS?
30070 REM KEY FOR RESTARTING LEVEL? UNDO? NEXT LEVEL?
30080 REM SMALL CAPS A,Z for UP/DOWN
30090 REM CHECK CENTERING OF LEVELS
30100 REM CHANGE BASIC FILE NAME TO BAGER
30110 REM ADD SOUND?

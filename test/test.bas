10 HIRES
20 AD = #A000
40 FOR K = 0 TO 5
50 FOR I = 0 TO 23
60 FOR J = 0 TO 3
70 READ D
80 POKE AD + 2 + J + I * 40 + K * 5, D
90 NEXT J
100 NEXT I
105 NEXT K
110 D1 = 3: D2 = 6
120 FOR I = 0 TO 30
130 POKE AD + 40 * (2 * I), D1
140 POKE AD + 40 * (2 * I + 1), D2
150 NEXT I
160 K$ = KEY$: IF LEN(K$) = 0 THEN GOTO 160
170 IF K$ = "1" THEN D1 = D1 + 1
180 IF K$ = "2" THEN D1 = D1 - 1
190 IF K$ = "3" THEN D2 = D2 + 1
200 IF K$ = "4" THEN D2 = D2 - 1
210 PRINT D1; " "; D2
250 GOTO 120
2000 DATA #41,#74,#40,#40
2010 DATA #42,#71,#40,#40
2020 DATA #41,#F0,#40,#40
2030 DATA #43,#6F,#40,#40
2040 DATA #41,#E7,#58,#40
2050 DATA #42,#4B,#4E,#40
2060 DATA #41,#57,#67,#40
2070 DATA #42,#FA,#6B,#40
2080 DATA #41,#56,#65,#60
2090 DATA #40,#F8,#6A,#60
2100 DATA #40,#53,#59,#60
2110 DATA #40,#47,#4A,#70
2120 DATA #40,#4D,#51,#50
2130 DATA #40,#F8,#4A,#70
2140 DATA #40,#6C,#71,#50
2150 DATA #41,#55,#78,#78
2160 DATA #41,#6D,#71,#58
2170 DATA #40,#70,#40,#48
2180 DATA #40,#46,#40,#40
2190 DATA #40,#5A,#60,#40
2200 DATA #40,#75,#50,#40
2210 DATA #40,#40,#58,#40
2220 DATA #40,#43,#54,#40
2230 DATA #40,#46,#68,#40
3000 DATA #43,#68,#40,#40
3010 DATA #45,#62,#40,#40
3020 DATA #42,#E1,#40,#40
3030 DATA #47,#5E,#40,#40
3040 DATA #42,#CE,#60,#40
3050 DATA #44,#56,#78,#40
3060 DATA #42,#6F,#5C,#40
3070 DATA #44,#F4,#5E,#40
3080 DATA #42,#6D,#4B,#40
3090 DATA #40,#F0,#57,#40
3100 DATA #40,#66,#73,#60
3110 DATA #40,#5E,#55,#60
3120 DATA #40,#5C,#62,#60
3130 DATA #41,#C4,#45,#60
3140 DATA #42,#77,#72,#70
3150 DATA #43,#6F,#61,#50
3160 DATA #40,#6E,#42,#68
3170 DATA #40,#47,#60,#50
3180 DATA #40,#41,#60,#48
3190 DATA #40,#4D,#50,#40
3200 DATA #40,#5A,#60,#40
3210 DATA #40,#40,#40,#40
3220 DATA #40,#46,#68,#40
3230 DATA #40,#4D,#50,#40
4000 DATA #40,#40,#40,#40
4010 DATA #40,#5D,#40,#40
4020 DATA #40,#D3,#50,#40
4030 DATA #40,#53,#70,#40
4040 DATA #40,#C4,#70,#40
4050 DATA #40,#56,#47,#40
4060 DATA #40,#62,#71,#60
4070 DATA #40,#55,#C5,#70
4080 DATA #40,#61,#78,#58
4090 DATA #40,#55,#D7,#68
4100 DATA #40,#41,#5A,#58
4110 DATA #40,#41,#76,#48
4120 DATA #40,#53,#6A,#5C
4130 DATA #40,#D0,#60,#4C
4140 DATA #40,#7B,#4C,#54
4150 DATA #40,#58,#5E,#4C
4160 DATA #40,#40,#5A,#56
4170 DATA #40,#41,#5E,#4A
4180 DATA #40,#41,#6F,#42
4190 DATA #40,#41,#77,#40
4200 DATA #40,#40,#73,#60
4210 DATA #40,#41,#51,#50
4220 DATA #40,#46,#6A,#60
4230 DATA #40,#4F,#57,#58
4240 DATA #43,#68,#40,#40
4250 DATA #45,#62,#40,#40
4260 DATA #42,#E1,#40,#40
4270 DATA #47,#5E,#40,#40
4280 DATA #42,#CE,#60,#40
4290 DATA #44,#56,#78,#40
4300 DATA #42,#6F,#5C,#40
4310 DATA #44,#F4,#5E,#40
4320 DATA #42,#6D,#4B,#40
4330 DATA #40,#F0,#57,#40
4340 DATA #40,#66,#73,#60
4350 DATA #40,#5E,#55,#60
4360 DATA #40,#5C,#62,#60
4370 DATA #41,#C5,#55,#60
4380 DATA #42,#75,#62,#70
4390 DATA #43,#6B,#71,#50
4400 DATA #40,#7A,#62,#78
4410 DATA #40,#57,#60,#40
4420 DATA #40,#4B,#40,#40
4430 DATA #40,#73,#60,#40
4440 DATA #41,#6D,#60,#40
4450 DATA #40,#40,#70,#40
4460 DATA #40,#46,#68,#40
4470 DATA #40,#4D,#50,#40
4480 DATA #41,#74,#40,#40
4490 DATA #42,#71,#40,#40
4500 DATA #41,#F0,#40,#40
4510 DATA #43,#6F,#40,#40
4520 DATA #41,#E7,#58,#40
4530 DATA #42,#4B,#4E,#40
4540 DATA #41,#57,#67,#40
4550 DATA #42,#FA,#6B,#40
4560 DATA #41,#56,#65,#60
4570 DATA #40,#F8,#6A,#60
4580 DATA #40,#53,#59,#60
4590 DATA #40,#47,#4A,#70
4600 DATA #40,#4D,#51,#50
4610 DATA #40,#F8,#4A,#70
4620 DATA #40,#4C,#71,#50
4630 DATA #40,#55,#78,#78
4640 DATA #40,#5D,#79,#58
4650 DATA #40,#40,#70,#48
4670 DATA #40,#40,#40,#44
4680 DATA #40,#44,#70,#40
4690 DATA #40,#4A,#70,#40
4700 DATA #40,#41,#70,#40
4710 DATA #40,#46,#68,#40
4720 DATA #40,#4D,#50,#40
4730 DATA #40,#40,#40,#40
4740 DATA #40,#5D,#40,#40
4750 DATA #40,#D3,#50,#40
4760 DATA #40,#53,#70,#40
4770 DATA #40,#C4,#70,#40
4780 DATA #40,#56,#47,#40
4790 DATA #40,#62,#71,#60
4800 DATA #40,#55,#C5,#70
4810 DATA #40,#61,#7C,#58
4820 DATA #40,#55,#D1,#68
4830 DATA #40,#42,#5E,#58
4840 DATA #40,#40,#6E,#48
4850 DATA #40,#41,#75,#5C
4860 DATA #40,#40,#F8,#4C
4870 DATA #40,#41,#76,#54
4880 DATA #40,#4D,#46,#4C
4890 DATA #40,#48,#76,#56
4900 DATA #40,#45,#77,#4A
4910 DATA #40,#41,#50,#46
4920 DATA #40,#41,#70,#60
4930 DATA #40,#40,#53,#60
4940 DATA #40,#43,#51,#50
4950 DATA #40,#4C,#62,#60
4960 DATA #40,#4B,#57,#58
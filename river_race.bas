0 REM ���- �-�
0 REM       No.8
0 REM Oct.7,1984
0 REM by K.Kuromusha
10 CONSOLE S1,24,C40,N:GRAPH I1,C,O1
20 TEMPO 7
30 POKE$952,0:DEF KEY(5)=POKE$952,166
40 SH$=CHR$(16)+"8DTlT��":CL$=STRING$(CHR$(0),8)
50 HI=0:GOSUB 1000
60 GOSUB 2000
70 PRINT CHR$(6):GRAPH C
80 FOR I=1 TO 23:CURSOR 0,I:PRINT">":CURSOR 39,I:PRINT"<";:NEXT I
90 USR($C000):P=17:X=20:Y=0:CURSOR 0,0:PRINT"SCORE          SCENE          SHIP";S
95 CURSOR 5,0:PRINT SC:CURSOR 20,0:PRINT M
100 MUSIC"C3ECECEG7"
110 CURSOR 5,0:PRINT SC:USR($C000)
120 POSITION X*8,192:PATTERN-8,CL$
130 GET K:IF K=4 THEN X=X-1
140 IF K=6 THEN X=X+1
150 POSITION X*8,192:PATTERN-8,SH$
160 SE$=CHARACTER$(X,24)
170 IF (SE$="�")+(SE$=">")+(SE$="<") GOTO 250
180 IF SE$="$" THEN MUSIC"+C0G":SC=SC+10
190 IF SE$="�" GOTO 300
200 SC=SC+M:Y=Y+1
205 IF (SC>1500)*F THEN F=0:MUSIC"C0DEFGAB+CBAGFEDC":S=S+1:CURSOR 34,0:PRINT S
210 GOSUB 1500
220 CURSOR INT(RND(1)*38)+1,1:PRINT"�"
230 IF RND(1)>.2 GOTO 110
240 CURSOR INT(RND(1)*38)+1,1:PRINT"$":GOTO 110
250 FOR I=1 TO 20:MUSIC"-C0-D":NEXT I
260 S=S-1:IF S<>0 GOTO 70
270 MUSIC"R9+B2+A+G+F+E+D+CBAGFEDC-B-A-G-F-E-D-C-D-E-F-G-A-BR-C9"
280 PRINTCHR$(6):CURSOR 15,13:PRINT"GAME OVER"
290 FOR I=0 TO 3000:NEXT I:GOTO 60
300 MUSIC"C3EGCEGCEG+C9"
310 SC=SC+M*50:M=M+1
320 GOTO 70
1000 LIMIT$C000:I=49152
1010 READ J:IF J<>-1 THEN POKE I,J:I=I+1:GOTO 1010
1020 RETURN
1030 DATA 62,128,211,232,33,191,211,17,231,211,1,152,3,237,184
1040 DATA 33,41,208,62,0,6,38,119,35,5,32,251,201,-1
1500 CURSOR 1,1
1510 IF Y>250 THEN PRINT STRING$("�",38):RETURN
1520 R=INT(RND(1)*7)-3
1530 IF (P+R>28)+(P+R<0) GOTO 1550
1540 P=P+R
1550 PRINT STRING$(">",P);"          ";STRING$("<",28-P);
1560 RETURN
2000 SC=0:S=3:M=1:F=1:GRAPH C
2010 PRINT CHR$(6):PRINT:PRINT
2020 PRINT"   ** ���- �-� **":PRINT:PRINT
2030 PRINT" '4' � '6' �� �� � ��޶�,":PRINT
2040 PRINT" �� � į�� +10,":PRINT
2050 PRINT" ��,��� � ��¶��� �� �� ��Ͻ�":PRINT
2060 PRINT" $ ....... ��"
2070 PRINT" � ....... ���"
2080 PRINT" >,< ..... ��":PRINT:PRINT
2090 PRINT"  PUSH [CR] KEY"
2100 GET K$:IF K$<>CHR$(13) GOTO 2100
2110 RETURN

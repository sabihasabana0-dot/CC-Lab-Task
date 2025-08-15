main: parser.tab.c lex.yy.c
	gcc parser.tab.c lex.yy.c
	a <input.tx> output.txt

parser.tab.c: parser.y 
	bison -d parser.y 

lex.yy.c: lexer.l
	flex lexer.l 

clean:
	rm -f lex.yy.c parser.tab.c parser.tab.h a.exe output.txt

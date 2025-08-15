%option noyywrap

%{
#include "cal.tab.h"
#include <stdlib.h>
%}

%%
"int"       { return INT; }
"if"        { return IF; }
"else"      { return ELSE; }
"while"     { return WHILE; }
"<="        { return LE; }
">="        { return GE; }
"=="        { return EQ; }
"!="        { return NE; }
"="         { return ASSIGN; }
"<"         { return LT; }
">"         { return GT; }
"%"         { return MOD; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MUL; }
"/"         { return DIV; }
";"         { return SEMI; }
"("         { return LP; }
")"         { return RP; }
"{"         { return LB; }
"}"         { return RB; }

[0-9]+      { yylval = atoi(yytext); return NUM; }
[a-zA-Z_][a-zA-Z0-9_]* { return ID; }

[ \t\n]+    { /* skip */ }

.           { printf("Unknown character: %s\n", yytext); return -1; }

%option noyywrap

%{
//Roll Number: 1703xxx
//
%}

%{
#include <stdio.h>
%}

%{
#include <stdio.h>
%}

letter      [a-zA-Z]
digit       [0-9]
delim       [ \t]
under       [_]
num         {digit}+
float_num   {num}"."{digit}*

%%

"int"                  {printf("%s -> INT\n", yytext);}
"sumArray"             {printf("%s -> FUNCTION_SUMARRAY\n", yytext);}
"arr"                  {printf("%s -> IDENT_ARR\n", yytext);}
"size"                 {printf("%s -> IDENT_SIZE\n", yytext);}
"sum"                  {printf("%s -> IDENT_SUM\n", yytext);}
"for"                  {printf("%s -> FOR\n", yytext);}
"i"                    {printf("%s -> IDENT_I\n", yytext);}
"return"               {printf("%s -> RETURN\n", yytext);}
"main"                 {printf("%s -> FUNCTION_MAIN\n", yytext);}
"data"                 {printf("%s -> IDENT_DATA\n", yytext);}
"result"               {printf("%s -> IDENT_RESULT\n", yytext);}
"printf"               {printf("%s -> FUNCTION_PRINTF\n", yytext);}

"("                    {printf("%s -> LPAREN\n", yytext);}
")"                    {printf("%s -> RPAREN\n", yytext);}
"{"                    {printf("%s -> LBRACE\n", yytext);}
"}"                    {printf("%s -> RBRACE\n", yytext);}
"["                    {printf("%s -> LSQUARE\n", yytext);}
"]"                    {printf("%s -> RSQUARE\n", yytext);}
";"                    {printf("%s -> SEMICOLON\n", yytext);}
","                    {printf("%s -> COMMA\n", yytext);}
"="                    {printf("%s -> ASSIGN\n", yytext);}
"<"                    {printf("%s -> LESS_THAN\n", yytext);}
"+="                   {printf("%s -> ADD_ASSIGN\n", yytext);}
"+"                    {printf("%s -> ADD\n", yytext);}

{num}                  {printf("%s -> NUMBER\n", yytext);}

"\"Sum = %d\""         {printf("%s -> STRING_LITERAL\n", yytext);}
{delim}                {}
\n                     {}

%%








int main()
{
  yylex();
  return 0;
}

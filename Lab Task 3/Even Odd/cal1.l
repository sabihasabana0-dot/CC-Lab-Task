%option noyywrap

%{
//Roll Number: 1703xxx
//
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

"void"                   {printf("%s -> VOID\n", yytext);}
"int"                    {printf("%s -> INT\n", yytext);}
"for"                    {printf("%s -> FOR\n", yytext);}
"if"                     {printf("%s -> IF\n", yytext);}
"else"                   {printf("%s -> ELSE\n", yytext);}
"return"                 {printf("%s -> RETURN\n", yytext);}
"main"                   {printf("%s -> FUNCTION_MAIN\n", yytext);}
"countEvenOdd"           {printf("%s -> FUNCTION_COUNTEVENODD\n", yytext);}
"arr"                    {printf("%s -> IDENT_ARR\n", yytext);}
"size"                   {printf("%s -> IDENT_SIZE\n", yytext);}
"even"                   {printf("%s -> IDENT_EVEN\n", yytext);}
"odd"                    {printf("%s -> IDENT_ODD\n", yytext);}
"i"                      {printf("%s -> IDENT_I\n", yytext);}
"data"                   {printf("%s -> IDENT_DATA\n", yytext);}
"evenCount"              {printf("%s -> IDENT_EVENCOUNT\n", yytext);}
"oddCount"               {printf("%s -> IDENT_ODDCOUNT\n", yytext);}
"printf"                 {printf("%s -> FUNCTION_PRINTF\n", yytext);}

"("                      {printf("%s -> LPAREN\n", yytext);}
")"                      {printf("%s -> RPAREN\n", yytext);}
"{"                      {printf("%s -> LBRACE\n", yytext);}
"}"                      {printf("%s -> RBRACE\n", yytext);}
"["                      {printf("%s -> LSQUARE\n", yytext);}
"]"                      {printf("%s -> RSQUARE\n", yytext);}
";"                      {printf("%s -> SEMICOLON\n", yytext);}
","                      {printf("%s -> COMMA\n", yytext);}
"="                      {printf("%s -> ASSIGN\n", yytext);}
"=="                     {printf("%s -> EQUAL\n", yytext);}
"%"                      {printf("%s -> MOD\n", yytext);}
"*"                      {printf("%s -> MUL\n", yytext);}
"&"                      {printf("%s -> ADDRESS\n", yytext);}
"<"                      {printf("%s -> LESS_THAN\n", yytext);}
"++"                     {printf("%s -> INCREMENT\n", yytext);}

{num}                    {printf("%s -> NUMBER\n", yytext);}
"\"Even: %d, Odd: %d\""   {printf("%s -> STRING_LITERAL\n", yytext);}
{delim}                  {}
\n                       {}

%%


int main()
{
  yylex();
  return 0;
}

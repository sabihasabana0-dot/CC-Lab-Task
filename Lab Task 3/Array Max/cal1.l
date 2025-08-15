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

"int"                   {printf("%s -> INT\n", yytext);}
"for"                   {printf("%s -> FOR\n", yytext);}
"if"                    {printf("%s -> IF\n", yytext);}
"return"                {printf("%s -> RETURN\n", yytext);}
"main"                  {printf("%s -> FUNCTION_MAIN\n", yytext);}
"findMax"               {printf("%s -> FUNCTION_FINDMAX\n", yytext);}
"arr"                   {printf("%s -> IDENT_ARR\n", yytext);}
"size"                  {printf("%s -> IDENT_SIZE\n", yytext);}
"max"                   {printf("%s -> IDENT_MAX\n", yytext);}
"i"                     {printf("%s -> IDENT_I\n", yytext);}
"nums"                  {printf("%s -> IDENT_NUMS\n", yytext);}
"maxValue"              {printf("%s -> IDENT_MAXVALUE\n", yytext);}
"printf"                {printf("%s -> FUNCTION_PRINTF\n", yytext);}

"("                     {printf("%s -> LPAREN\n", yytext);}
")"                     {printf("%s -> RPAREN\n", yytext);}
"{"                     {printf("%s -> LBRACE\n", yytext);}
"}"                     {printf("%s -> RBRACE\n", yytext);}
"["                     {printf("%s -> LSQUARE\n", yytext);}
"]"                     {printf("%s -> RSQUARE\n", yytext);}
";"                     {printf("%s -> SEMICOLON\n", yytext);}
","                     {printf("%s -> COMMA\n", yytext);}
"="                     {printf("%s -> ASSIGN\n", yytext);}
"<"                     {printf("%s -> LESS_THAN\n", yytext);}
">"                     {printf("%s -> GREATER_THAN\n", yytext);}

{num}                   {printf("%s -> NUMBER\n", yytext);}
"\"Max = %d\""          {printf("%s -> STRING_LITERAL\n", yytext);}
{delim}                 {}
\n                      {}

%%


int main()
{
  yylex();
  return 0;
}

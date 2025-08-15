%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *s) {
    printf("Error: %s\n", s);
}
int yylex();
%}

%token INT IF ELSE WHILE
%token ASSIGN SEMI
%token PLUS MINUS MUL DIV MOD
%token LT GT LE GE EQ NE
%token LP RP LB RB
%token ID NUM

%start program

%%

program : stmts ;

stmts : stmts stmt
      | stmt
      ;

stmt : declaration SEMI
     | assignment SEMI
     | conditional
     | loop
     ;

declaration : INT ID
            | INT ID ASSIGN expr
            ;

assignment : ID ASSIGN expr ;

conditional : IF LP condition RP LB stmts RB
            | IF LP condition RP LB stmts RB ELSE LB stmts RB
            ;

loop : WHILE LP condition RP LB stmts RB ;

condition : expr LT expr
          | expr GT expr
          | expr LE expr
          | expr GE expr
          | expr EQ expr
          | expr NE expr
          ;

expr : expr PLUS expr
     | expr MINUS expr
     | expr MUL expr
     | expr DIV expr
     | expr MOD expr
     | LP expr RP
     | NUM
     | ID
     ;

%%

int main() {
    yyparse();
    printf("Parsing complete.\n");
    return 0;
}

%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token INT_TYPE INT_NUM FLOAT_NUM FLOAT_TYPE ASSIGN ADD SEMI ID 
%start stmts

%%

stmts : stmts stmt | ;
stmt : dclr_stmt | ass_stmt;
dclr_stmt : Type ID SEMI
       | Type ID ASSIGN NUM SEMI;

NUM : INT_NUM | FLOAT_NUM;
Type : INT_TYPE | FLOAT_TYPE;
ass_stmt : ID ASSIGN NUM SEMI;        

%%

void yyerror(char *s)
{
    fprintf(stderr, "error: %s", s);
}

int main()
{
    yyparse();
    printf("Parsing Finished\n");
}


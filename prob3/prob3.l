/*  flex  file for lexical analyser for PLUS-TIMES-POWER expressions,
    which involve simple arithmetic for nonnegative integers
    with addition, multiplication and powers.
    Graham Farr, Monash University
    Initially, copied from the Wikipedia page for  lex, then modified over time.
    Last updated:   5 September 2024
*/

/*** Definition section ***/

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <complex.h>
#undef  I
void yyerror(char *);
%}

%%

    /*** Rules section ***/

    /* Quantum gate tokens */
CNOT        { printf("Token: CNOT; Lexeme: %s\n", yytext); }
H           { printf("Token: H; Lexeme: %s\n", yytext); }
I           { printf("Token: I; Lexeme: %s\n", yytext); }
X           { printf("Token: X; Lexeme: %s\n", yytext); }
Y           { printf("Token: Y; Lexeme: %s\n", yytext); }
Z           { printf("Token: Z; Lexeme: %s\n", yytext); }
TOF         { printf("Token: TOF; Lexeme: %s\n", yytext); }


    /* Kronecker product operator */
\(x\)       { printf("Token: KRONECKERPROD; Lexeme: %s\n", yytext); }



    /* Quantum state variables (e.g., k0, k1, etc.) */
k[0-9]+     { printf("Token: QSTATE;  Lexeme: %s\n", yytext); }



    /* Arithmetic and grouping symbols */
[+*(),]     { printf("Token and Lexeme: %s\n", yytext); }



    /* Nonnegative integers (in case they're part of expressions) */
(0|[1-9][0-9]*)   {
            printf("Token: NUMBER;  Lexeme: %s\n", yytext);
        }



    /* Handling newlines */
\n      {
            printf("Token and Lexeme: <newline>\n");
        }



    /* Skip whitespace */
[ \t]   {    }     /*  skip whitespace  */

    /* Invalid characters */
.       {
           printf("Invalid character.\n");
        }

%%

    /*** C Code section ***/

void yyerror(char *s) {
      fprintf(stderr, "line %d: yytext = %s.  Error msg: %s.\n", yylineno, yytext, s);
}

int yywrap(void) {
   return 1;
}

/* comment out main() if using lex with yacc */
int main(void) {
    yylex();
    return 0;
}

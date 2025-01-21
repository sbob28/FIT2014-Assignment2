%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <complex.h>
#undef I
void yyerror(char *);
#include "quant.h"
#include "y.tab.h"
%}

%%

CNOT {
    yylval.str = strdup(yytext);
    return CNOT;
}

TOF {
    yylval.str = strdup(yytext);
    return TOF;
}

"(x)" {
    yylval.str = strdup(yytext);
    return KRONECKERPROD;
}

I {
    yylval.str = strdup(yytext);
    return I;
}

H {
    yylval.str = strdup(yytext);
    return H;
}

X {
    yylval.str = strdup(yytext);
    return X;
}

Y {
    yylval.str = strdup(yytext);
    return Y;
}

Z {
    yylval.str = strdup(yytext);
    return Z;
}

k0 {
    yylval.str = strdup(yytext);
    return KET0;
}

k1 {
    yylval.str = strdup(yytext);
    return KET1;
}

[*()] {
    return *yytext;
}

\n {
    return '\n';
}

[ \t]+ {
    /* Ignore whitespace */
}

. {
    yyerror("invalid character");
}

%%

/*** C Code section ***/
void yyerror(char *s) {
    fprintf(stderr, "line %d: yytext = %s. Error msg: %s.\n", yylineno, yytext, s);
}

int yywrap(void) {
    return 1;
}


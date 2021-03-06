%{
#include "Calculator.tab.h"
/*
 this include is necessary because
 this header (generated by bison) contains
 the declaration of the tokens used
 in the return values below 
*/
%}

%option noyywrap

num [0-9]+

%%
{num}           { 
                    yylval = atoi(yytext);
                    /* the yylval variable contains the value associated to the token
                    (by default of type int)
                    this information will be available to bison */
                    return NUM; 
                }
"+"             { return ADDOP; }
"*"             { return MULTOP; }
"("             { return LBRACKET; }
")"             { return RBRACKET; }
\n              { return EOLINE; }

%{
#include<stdio.h>
%}

%%
[A-Z]+[\t\n ] { printf("%s",yytext); }
[a-z]+ {printf(" ");}
%%

int yywrap()
{}


int main()
{
printf("\n enter a string:");
yylex();
}

/* Output:
C:\Users\LOKESH KUMAR>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\LOKESH KUMAR>flex capital.l.txt

C:\Users\LOKESH KUMAR>set path=C:\MinGW\bin

C:\Users\LOKESH KUMAR>gcc lex.yy.c

C:\Users\LOKESH KUMAR>a

 enter a string:Hello World Is A MAGIC
H  W  I  A MAGIC */

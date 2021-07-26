package src;

%%

%{
	private void imprimir(String descricao, String lexema){
		System.out.println(lexema + "-" + descricao);
	}
%}

%class AnalisadorLexico
%type void

//BRANCO = [\n||\t|\r]
ID = [|a-z|][a-z|0-9]*
//SOMA = "+"
//SUBTRAI = "-"
//MULTI = "*"
//DIVID = "/"
//INTEIRO = 0|[1-9][0-9]*

%%

//"if"			{imprimir("Palavra reservada", yytext());}
//"then"			{imprimir("Palavra reservada", yytext());}
//{BRANCO}		{imprimir("Espaco em branco ", yytext());}
{ID}			{imprimir("Identificador ", yytext());}
//{SOMA}			{imprimir("Operador de soma ", yytext());}
//{SUBTRAI}		{imprimir("Operador de subtracao", yytext());}
//{MULTI}			{imprimir("Operador de multiplicacao", yytext());}
//{DIVID}			{imprimir("Operador de divisao", yytext());}
//{INTEIRO}		{imprimir("Numero inteiro ", yytext());}

. { throw new RuntimeException("Caractere invalido" + yytext()); }
/* --------------------------Seccion codigo-usuario ------------------------ */
import java_cup.runtime.Symbol;

%%
/* ----------------- Seccion de opciones y declaraciones  ----------------- */

%cup

%%
/* ------------------------ Seccion de reglas lexicas ---------------------- */

arbol {return new Symbol(sym.ARBOL, yytext());}
node {return new Symbol(sym.NODO, yytext()); }
shape {return new Symbol(sym.SH, yytext()); }
label {return new Symbol(sym.ETIQUETA, yytext()); }
color {return new Symbol(sym.COLOR, yytext()); }
fontcolor {return new Symbol(sym.COLOR_FUENTE, yytext()); }
style {return new Symbol(sym.FUENTE, yytext()); }
edge {return new Symbol(sym.ARISTA, yytext()); }
dir {return new Symbol(sym.DIRECCION, yytext()); }
hijos {return new Symbol(sym.HIJOS, yytext()); }


\"square\" | square {return new Symbol(sym.SH_CUADRADO, yytext()); }
\"circle\" | circle  {return new Symbol(sym.SH_CIRCULO, yytext()); }
\"doublecircle\" | doublecircle {return new Symbol(sym.SH_DOBLECIRCULO, yytext());}
\"rectangle\" | rectangle {return new Symbol(sym.SH_RECTANGULO, yytext());}

\"blue\" | blue {return new Symbol(sym.C_AZUL, yytext());}
\"green\" | green {return new Symbol(sym.C_VERDE, yytext());}
\"red\" | red {return new Symbol(sym.C_ROJO, yytext());}
\"yellow\" | yellow {return new Symbol(sym.C_AMARILLO, yytext());}

\"bold\" | bold {return new Symbol(sym.FT_BOLD, yytext());}
\"dashed\" | dashed {return new Symbol(sym.FT_DASHED, yytext());}
\"solid\" | solid {return new Symbol(sym.FT_SOLID, yytext());}

\"none\" | none {return new Symbol(sym.DIR_NONE, yytext());}
\"forward\" | forward {return new Symbol(sym.DIR_FORWARD, yytext());}
\"back\" | back {return new Symbol(sym.DIR_BACK, yytext());}
\"both\" | both {return new Symbol(sym.DIR_BOTH, yytext());}


\{ {return new Symbol(sym.LLAVE_A, yytext());}
\[ {return new Symbol(sym.CORCHETE_A, yytext());}
\} {return new Symbol(sym.LLAVE_C, yytext());}
\] {return new Symbol(sym.CORCHETE_C, yytext());}
= {return new Symbol(sym.IGUAL, yytext());}
, {return new Symbol(sym.COMA, yytext());}
; {return new Symbol(sym.PUNTO_COMA, yytext());}

//COMENTARIOS
"//"+([^("\n")])*+\n {return new Symbol(sym.COMENTARIO, yytext());}
#+([^("\n")])*+\n {return new Symbol(sym.COMENTARIO, yytext());}
"/*"+ ([^("*/")])* +"*/" {return new Symbol(sym.COMENTARIO, yytext());}


//IDENTIFICADORES 
[a-zA-Z]+[^(" "| \t | \f | \n | \r |\{ |\[ |\} |\] |= |, |;)]* {return new Symbol(sym.IDENTIFICADOR, yytext());}


//LABELS
\"([^(\")]*)\" 											   	{return new Symbol(sym.ETIQUETA_VALOR1, yytext());}
[^(" "| \t | \f | \n | \r |\{ |\[ |\} |\] |= |, |;)]* 		{return new Symbol(sym.ETIQUETA_VALOR2, yytext());}

[ \t\r\n\f] { /* ignora delimitadores */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }

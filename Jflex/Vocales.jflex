import java.io.*;
import java.util.Scanner;

%%

/*segunda seccion: configuracion*/
%class vocales
%standalone
%unicode
%line
%column
%int
%public


%{

    public int vocales = 0;  

 private void incrementoPalabras() {
 	vocales++;
 }

public int getVocales() {
        return vocales;
    }
    


%}

%eof{
System.out.println("La frase tiene " + getVocales() + " vocales");

%eof}

/*tercer seccion: reglase lexicas*/

%%
[aeiouAEIOU]{1} {vocales++; }







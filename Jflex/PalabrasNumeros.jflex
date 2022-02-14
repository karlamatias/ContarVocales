import java.io.*;
import java.util.Scanner;

%%

/*segunda seccion: configuracion*/
%class palabras
%standalone
%unicode
%line
%column
%int
%public


%{

    public int words = 0;
    public int numbers = 0;

 private void incrementoPalabras() {
 	words++;
 }

public int getWords() {
        return words;
    }
    
private void incrementoNumeros() {
 	numbers++;
 }

public int getNumbers() {
        return numbers;
    }
    
  
    
 

%}

%eof{
System.out.println("La cantidad de Palabras es " + getWords());
System.out.println("La cantidad de Numeros es " + getNumbers());

%eof}

/*tercer seccion: reglase lexicas*/

%%
[a-zA-Z]+ { words++;}
[0-9]+ { numbers++;}





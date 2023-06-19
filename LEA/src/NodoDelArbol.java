import java.io.*;
import java.util.*;
public class NodoDelArbol {

   public String id;
   ArrayList<String> atributos;
   ArrayList<AristaDelArbol> hijos;

   //Constructor
   public NodoDelArbol(String id)
   {
       this.id = id;
       this.atributos = new ArrayList<String>();
       this.hijos =  new ArrayList<AristaDelArbol>();
   }

   public String toString()
   {
	   String cadena = id.toString() + atributos.toString() + hijos.toString();
       return cadena;
   }
}

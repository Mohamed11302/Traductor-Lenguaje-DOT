import java.io.*;
import java.util.*;
public class AristaDelArbol {

   public String id;
   ArrayList<String> atributos;

   //Constructor
   public AristaDelArbol(String id)
   {
       this.id = id;
       this.atributos = new ArrayList<String>();
   }

   public String toString()
   {
	   String cadena = id + atributos;
       return cadena;
   }
}

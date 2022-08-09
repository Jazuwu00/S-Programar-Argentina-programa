/*Ejercicio 1: Los primeros registros 
Una historiadora está recopilando información acerca de distintos monumentos a lo largo y ancho del mundo . En principio solo quiso saber el nombre, ubicación, y año de construcción de cada monumento.
Para eso almacenó cada dato en una variable:
nombreEstatuaDeLaLibertad = "Estatua de la Libertad";
locacionEstatuaDeLaLibertad = "Nueva York";
anioDeConstruccionEstatuaDeLaLibertad = "1886";
nombreCristoRedentor = "Cristo Redentor";
locacionCristoRedentor = "Rio De Janeiro";
anioDeConstruccionCristoRedentor = "1931";
Ahí es cuando se dio cuenta que no era conveniente : si bien la información entre las variables estaba relacionada, la estaba almacenando por separado. Entonces pensó: ¿no existirá alguna forma de representar las distintas características o propiedades de una misma cosa de forma agrupada?*/


/*Ejercicio 2: Tu propio monumento
Los monumentos que probaste en el ejercicio anterior están representados como registros, y cada una de sus características (nombre, locación, año de construcción) son campos del registro. Por cierto, ¡podemos crear registros de cualquier cosa, con los campos que querramos!
Por ejemplo, podríamos almacenar un libro de modo que cada campo del registro fuese alguna característica: su título, su autor, su fecha de publicación, y más.
Es tu momento del monumento! Guardá en las variables torreAzadi y monumentoNacionalALaBandera registros de esos monumentos, oriundos de las ciudades de Teherán, Irán y Rosario, Argentina respectivamente. ¿Te animás a investigar en qué año se terminaron de construir para completar ese campo?*/
let torreAzadi = { nombre: "Torre Azadi", locacion: "Teherán, Irán", anioDeConstruccion: 1971 };

let monumentoNacionalALaBandera = { nombre: "Monumento Nacional A La Bandera", locacion: "Rosario, Argentina", anioDeConstruccion: 1957 };

/*Ejercicio 3: Accediendo al campo
Cuando consultaste los registros existentes, se veía algo parecido a lo siguiente:

> tajMahal
{ nombre: "Taj Mahal", locacion: "Agra, India", anioDeConstruccion: 1653 }
Esa consulta era porque estábamos viendo al registro tajMahal completo, incluyendo todos sus campos. ¡Pero también se puede consultar por un campo particular! Mirá :

> tajMahal.locacion
"Agra, India"
> tajMahal.anioDeConstruccion
1653 */

/*Ejercicio 4: Temperatura de planeta
Ahora que agregamos registros de planetas, ¡trabajemos un poco con ellos!

Definí una función temperaturaDePlaneta que reciba como argumento un registro de planeta y retorne un string que indique su nombre y su temperatura promedio. ¡Tiene que funcionar para cualquier planeta! */

function temperaturaDePlaneta (planeta){
    return planeta.nombre+" tiene una temperatura promedio de "+ planeta.temperaturaPromedio  +" grados"
  }


  /*Ejercicio 5: Moviendo archivos
  Definí el procedimiento moverArchivo, que recibe un registro y una nueva ruta y modifica el archivo con la nueva ruta. */
  
  function moverArchivo(registro, lugar){
    registro.ruta= lugar;
  }

  /*Ejercicio 6: Registros de dos milenios
  Definí la función esDelMilenioPasado, que recibe un archivo y retorna un booleano */

  function esDelMilenioPasado(archivo){
    return anio(archivo.creacion) <2000
  }

  /*Ejercicio 7: Postres complejos
  Definí la función masDificilDeCocinar, que recibe dos registros de postres como argumentos y retorna el que tiene más ingredientes de los dos. */

  function masDificilDeCocinar(postre, postre2){
    if( longitud(postre.ingredientes) > longitud(postre2.ingredientes)){
      return postre
    } else {
      return postre2
    }
  }


  /*Ejercicio 8: Listas de registros
  Probá en la consola las listas postresFavoritos y monumentosDeAmerica. Hay un postre que no mostramos antes, ¿te das cuenta cuál es solamente leyendo sus ingredientes? */

  /*Ejercicio 9: 60 dulces minutos
  Definí el procedimiento agregarAPostresRapidos, que toma una lista con postres rápidos y un postre por parámetro. Si el tiempo de cocción es de una hora o menos, se agrega el registro a la lista. */

  function agregarAPostresRapidos(listaPostres, postre){
    if(postre.tiempoDeCoccion <= 60){
      agregar(listaPostres,postre)
    }
  }

  /*Ejercicio 10: Hay un registro en mi registro 
  Averiguá qué devuelve el campo ingredientes del campo postre del registro menuInfantil. ¡Está un registro adentro del otro! La sintaxis es la siguiente:

menuInfantil.postre.ingredientes*/

/*Ejercicio 11: ¡Azúcar!
Definí un procedimiento endulzarMenu, que recibe un registro menú y le agrega azúcar a los ingredientes de su postre. Si ya tiene azúcar, no importa... ¡le agrega más!*/

function endulzarMenu(menu){
    agregar(menu.postre.ingredientes, "azucar")
  }
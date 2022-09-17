/* 

#SeProgramar - Mayo 2022 T3!



Ejercicio 1: Ejercicio 1
Ale se aburrió de ver vacío su balcón. Así que compró 4 macetas con plantas para ponerlas en cada esquina, de esta forma:


Creá un programa que ponga una maceta (bolita Azul) en cada esquina del balcón. El cabezal empieza en el origen (o sea, en el borde Sur-Oeste) pero no te preocupes por dónde finaliza.


program{

Poner(Azul)

IrAlBorde(Norte)

 Poner(Azul)

   IrAlBorde(Este)

   Poner(Azul)

  IrAlBorde(Sur)

  Poner(Azul)

} */

/*Ejercicio 2: Ejercicio 2
A Ale no le gustó como quedó ese color en las macetas . ¡Programemos algo para poder probar como quedaría con cualquier color!

Definí el procedimiento ColocarMacetas para que ponga macetas del color que reciba por parámetro en cada esquina. No te preocupes por donde termina el cabezal.


procedure ColocarMacetas (color) {
  Poner(color)

  IrAlBorde(Norte)

  Poner(color)

   IrAlBorde(Este)

   Poner(color)

  IrAlBorde(Sur)

  Poner(color)

} */

/*Ejercicio 3: Ejercicio 3
Dejemos atrás los tableros y... ¡Pasemos a JavaScript!

Cuando hacemos un examen de matemáticas es común verificar más de una vez si las cuentas que hicimos están bien.

Para eso vamos a crear una función que reciba 3 números y nos diga si la multiplicación entre los 2 primeros es igual al tercero. Por ejemplo:

> laMultiplicacionDaBien(2, 4, 8)
true //Porque 2 por 4 es igual a 8

> laMultiplicacionDaBien(3, 5, 12)
false //Porque 3 por 5 es 15, no 12
Definí la función laMultiplicacionDaBien.



function  laMultiplicacionDaBien(num, num2,num3){

  return num * num2 ===num3

} */

/*Ejercicio 4: Ejercicio 4
Ya pasamos por el tesoro de la matemática. Otro bien preciado es el tiempo . Es por ello que tratamos de usarlo sabiamente.

Con esto en mente vamos a crear una función que dados un nombre y un apodo nos diga cuál de los dos es más corto.

> cualEsElMasCorto("Luis", "Lucho")
"Luis"

> cualEsElMasCorto("Carolina", "Caro")
"Caro"

> cualEsElMasCorto("Ricardo", "Ringo")
"Ringo"
Definí la función cualEsElMasCorto.

S
function cualEsElMasCorto (nombre,nombre2){

 if (nombre.length < nombre2.length){

 return nombre

 }else {

   return nombre2

 }

} */


/*Ejercicio 5: Ejercicio 5
Vale está haciendo un trabajo de investigación y nos pidió ayuda . Necesita poder distinguir las palabras más cortas de una oración . Una palabra se considera corta si tiene menos de 5 letras. Veamos un ejemplo:

> obtenerPalabrasCortas(["Hari", "Seldon", "nacido", "en", "el", "año", "11988", "de", "la", "Era", "Galáctica"])

["Hari", "en", "el", "año", "de", "la", "Era"]
Definí la función obtenerPalabrasCortas.



function obtenerPalabrasCortas (lista){

 let PalabrasCortas = []

 
 for(let palabra of lista){

   if(palabra.length < 5){

    agregar(PalabrasCortas, palabra)

   }

 }

  return PalabrasCortas;

} */


/*Ejercicio 6: Ejercicio 6
Ale estudia Historia y pensó en crear una función que le ayude a hacer resúmenes . Para eso, consiguió registros de hechos históricos con la siguiente forma:

let independenciaArgentina = {
  suceso: "La declaración de la independencia de Argentina",
  anio: 1816,
  ciudad: "San Miguel de Tucumán"
};

let declaracionDerechosHumanos = {
  suceso: "La declaración universal de los Derechos Humanos",
  anio: 1948,
  ciudad: "París"
};
La función deberá devolver un resumen de la información registrada de manera simple. Por ejemplo:

> resumenHechoMemorable(independenciaArgentina)
"La Declaración de la independencia de Argentina sucedió hace 205 años en la ciudad de San Miguel de Tucumán"

> resumenHechoMemorable(declaracionDerechosHumanos)
"La Declaración Universal de los Derechos Humanos sucedió hace 73 años en la ciudad de Paris"
Definí la función resumenHechoMemorable que nos permita obtener la información requerida. Asumí que estamos en 2021.


function resumenHechoMemorable (array){

  return array.suceso + " sucedió hace " + (2021- array.anio) + " años en la ciudad de " + array.ciudad;

} */


/*Ejercicio 7: Ejercicio 7
¡Dejemos atrás a JavaScript para pasar a Ruby!

Vamos a modelar la clase Celular para poder:

cargar una cantidad de minutos determinada (si cargamos 10 minutos, su bateria incrementa en 10);
ver si tiene carga suficiente, es decir, si su bateria es mayor a 72.
Definí en Ruby, la clase Celular que tenga un atributo @bateria con su getter. Las instancias de la clase Celular entienden los mensajes cargar_bateria! (que recibe los minutos por parámetro y lo carga esa cantidad) y suficiente_carga?. No te olvides de definir un initialize que reciba a la bateria inicial como parámetro.


class Celular

  def initialize(bateria)

  @bateria = bateria

  end

  

  def bateria

    @bateria

  end

  def cargar_bateria! (minutos)

    @bateria= @bateria+minutos

  end

  def suficiente_carga?

    @bateria >72

  end

end 
 */


/*Ejercicio 8: Ejercicio 8
A Pilse le gusta mucho leer , pero le interesa saber cuántos de los libros que leyó son largos. Cada uno de los libros sabe responder al mensaje largo?.

Definí en Ruby el método cantidad_de_largos que responda a cuántos libros largos leyó Pilse.


module Pilse

  @libros_leidos = [MartinFierro, Fundacion, ElPrincipito, HarryPotter]

  def self.cantidad_de_largos

    @libros_leidos.count {|libro|libro.largo?}

  end

end */



/*Ejercicio 9: Ejercicio 9
Una productora de cine se encarga de invertir en las películas que trabajan con ella. Cuando esta empresa invierte:

Las películas de tipo Drama duplican su duracion;
las de Miedo contratan 11 extras;
las de género Comedia no se modifican.
Definí el método invertir! en la clase Productora y el método recibir_inversion! en los distintos tipos de películas. Definí los getters necesarios en cada una.


class Productora
  def initialize(peliculas)
    @peliculas = peliculas
  end
  def peliculas
    @peliculas
  end
 def invertir! 
   @peliculas.each {|pelicula|pelicula.recibir_inversion!}
  end
end

class Drama
  def initialize(duracion)
    @duracion = duracion
  end
  def duracion
    @duracion
  end
  def recibir_inversion!
    @duracion =@duracion * 2
  end
end

class Miedo 
  def initialize(extras)
    @extras = extras
  end
  def extras
    @extras
  end
    
  def recibir_inversion! 
   @extras = @extras + 11
  end
end

class Comedia
  def recibir_inversion!
  end
end
*/
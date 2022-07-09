/*Ejercicio 1: ¿Y el tablero?*/
/*El tablero nos servía para ver lo que nuestro programa hacía y qué resultados generaba. Nos permitía también observar los cambios de estado a causa del programa. Pero ahora ya tenemos experiencia suficiente como para lanzarnos a programar sin tener que "ver" lo que sucede.
Ahora contamos con la consola: una herramienta poderosa que nos permite hacer pruebas más detalladas y flexibles. */


/*Ejercicio 2: Impresión por pantalla */
/*Ahora que ya te convencimos de que no necesitamos al tablero, vamos a mostrarte que sí hay algo parecido en JavaScript : la impresión por pantalla.*/

/*Ejercicio 3: Martin Fierro
definí la function versosMartinFierro que imprima por pantalla los primeros versos del Martín Fierro:*/

function versosMartinFierro () {
    imprimir ("Aquí me pongo a cantar")
    imprimir ("Al compás de la vigüela;")         
    imprimir ("Que el hombre que lo desvela")    
    imprimir ("Una pena extraordinaria")
    return 0;
  }

/*Ejercicio 4: ¿Y los procedimientos?
 hagamos memoria: cuando queremos reutilizar código, podíamos declarar:

funciones, que siempre retornan algo y no producen ningún efecto
procedimientos, que no retornan nada, y producen efectos
Entonces versosMartinFierro, no es una función... ¡sino un procedimiento! ¿Cómo se declaran procedimientos en JavaScript?

¡De la misma forma que las funciones!: usando la palabra clave function.

Envía esta nueva versión de versosMartinFierro */

function versosMartinFierro() {
    imprimir("Aquí me pongo a cantar");
    imprimir("Al compás de la vigüela;");
    imprimir("Que el hombre que lo desvela");
    imprimir("Una pena extraordinaria");
}

/*Ejercicio 5: ¿Y el program?
Ahora bien, más allá de que podamos consultar el resultado de una función a través de la consola, también aprendimos anteriormente que los programas 
tienen un punto de entrada: el program. ¿Dónde quedó?
La respuesta es tan simple como sorprendente: en JavaScript todo lo que escribamos fuera de una function será, implícitamente, dicho punto de entrada*/

/*Ejercicio 6: Coerciones
definí una función elefantesEquilibristas, que tome un número de elefantes y devuelva una rima de una conocida canción*/

function elefantesEquilibristas (num){
    return num +" " + "elefantes se balanceaban";
}

/*Ejercicio 7: El círculo de la vida && ejercicio 8
Definí las funciones perimetroCirculo y areaCirculo que reciben el radio de un círculo y a partir del mismo nos retornan su perímetro y su área.*/

let pi = 3.14159265358979;

const PI = 3.14159265358979;
function perimetroCirculo(radio){
return radio * (pi *2)
}
function areaCirculo(radio){
 return pi * radio * radio
}

/*Ejercicio 9: Esto no tiene valor
Ya que vas entendiendo cómo se asignan las variables, te traemos algo para pensar: ¿qué pasa si intento usar una variable a la que nunca le asigné un valor? */

/*Ejercicio 10: Variables globales
 definí una función ascensorSobrecargado, que toma una cantidad de personas y retorna si entre todas superan la carga máxima de 300 kg.

Tené en cuenta que nuestra función va a utilizar dos variables globales:

pesoPromedioPersonaEnKilogramos, la cual ya está declarada,
cargaMaximaEnKilogramos que vas a tener que declarar. */

let pesoMaximoEquipajeEnGramos = 5000;
function ascensorSobrecargado (cantPersonas){
    return cantPersonas * pesoPromedioPersonaEnKilogramos >= cargaMaximaEnKilogramos
  }

/*Ejercicio 11: La buena fortuna
Definí el procedimiento aumentarFortuna que duplique el valor de la variable global pesosEnMiBilletera. No declares la variable, ya lo hicimos por vos (con una cantidad secreta de dinero)*/

function aumentarFortuna (){
    pesosEnMiBilletera*= 2;
 }

/*Ejercicio 12: ¿Y esto cuánto vale?
Vimos que una variable solo puede tener un valor, entonces cada vez que le asignamos uno nuevo, perdemos el anterior. Entonces, dada la función:

function cuentaExtravagante() {
  let numero = 8;
  numero *= 2;
  numero += 4;
  return numero;
}
Si la invocaramos ¿qué crees que retornaría?

Veamos el paso a paso:

inicialmente la variable numero vale 8;
al hacer numero *= 2 la variable pasa a tener su valor multiplicado por 2, es decir, 16;
al hacer numero += 4 le sumamos 4 a 16 y lo guardamos en número, por ende la función cuentaExtravagante retorna 20. */
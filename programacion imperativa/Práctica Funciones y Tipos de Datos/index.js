/*Ejercicio 1: Comprando Hardware*/
/*Definí la función cuantoCuesta que tome el número de pulgadas del monitor y la cantidad de memoria, y calcule el costo estimado de nuestra computadora*/
/*  Los monitores cuestan $60 por cada pulgada
    La memoria cuesta $200 por cada GB
    El precio base estimado del resto de los componentes es de $1000*/

    function cuantoCuesta(numeroPulgada,cantMemoria){
        return 1000+ cantMemoria*200 + numeroPulgada*60;
    }
/*Ejercicio 2: ¿Me conviene?*/
/*Ahora que sabemos cuantoCuesta una computadora, queremos saber si una computadora me conviene. Esto ocurre cuando:
sale menos de $6000, y
tiene al menos un monitor de 32 pulgadas, y
tiene al menos 8GB de memoria
Definí la función meConviene, que nuevamente tome el número de pulgadas y cantidad de memoria 
y nos diga si nos conviene comprarla :*/

    function meConviene(numeroPulgada,cantMemoria){
        return cuantoCuesta(numeroPulgada,cantMemoria)<6000 && numeroPulgada>31 && cantMemoria>7;
    }

/*Ejercicio 3: Triangulos*/
/*¡Hora de hacer un poco de geometría! Queremos saber algunas cosas sobre un triángulo:
perimetroTriangulo: dado los tres lados de un triángulo, queremos saber cuánto mide su perímetro.
areaTriangulo: dada la base y altura de un triángulo, queremos saber cuál es su área.

Definí las funciones perimetroTriangulo y areaTriangulo*/

    function perimetroTriangulo(lado1,lado2,lado3){
        return lado1+lado2+lado3;
    }
    function areaTriangulo(base,altura){
        return base*altura /2;
    }

/*Ejercicio 4: Cuadrados*/
/*queremos saber:
perimetroCuadrado: dado un lado, queremos saber cuánto mide su perímetro.
areaCuadrado: dado un lado, queremos saber cuál es su area
Definí las funciones perimetroCuadrado y areaCuadrado */

    function perimetroCuadrado(lado){
        return lado*4;
    }
    function areaCuadrado(lado){
        return lado*lado;
    }

 /*Ejercicio 5: ¿Está afinado?*/
 /*Definí una función estaAfinado, que reciba la frecuencia (un número) del la central, y retorne si dicha frecuencia es igual a 440Hz.*/
    function estaAfinado(numero){
        return numero===440;
    }

/*Ejercicio 6: ¿Está cerca? */
/*Ahora queremos saber si el la central del piano está cerca de estar afinado. Esto ocurre cuando está entre 437Hz y 443Hz, pero NO es exactamente 440Hz. Por ejemplo:
> estaCerca(443)
true //está en el rango 437-443
> estaCerca(442)
true //ídem caso anterior
> estaCerca(440)
false //está en el rango, 
      //pero es exactamente 440
> estaCerca(430)
false //está fuera del rango
Definí la función estaCerca*/

function estaCerca(numero){
    return numero =>437 && numero <= 443 && numero !==440;
}
/*Ejercicio 7: Cartelitos */
/*Definí la función escribirCartelito, que tome un título, un nombre y un apellido y forme un único string. Por ejemplo:
> escribirCartelito("Dra.", "Ana", "Pérez")
"Dra. Ana Pérez" */
function escribirCartelito(titulo,nombre,apellido){
    return titulo + " " + nombre + " " + apellido
}

/*Ejercicio 8: Más Cartelitos */
/*Ah, ¡pero no tan rápido! Algunas veces en nuestro cartelito sólo queremos el título y el apellido, sin el nombre. Por eso ahora nos toca mejorar nuestra función escribirCartelito de forma que tenga 4 parámetros:
el título;
el nombre;
el apellido;
un booleano que nos indique si queremos un cartelito corto con sólo título y apellido, o uno largo, como hasta ahora.
Modificá la función escribirCartelito, de forma que se comporte como se describe arriba. Ejemplo:

// cartelito corto
> escribirCartelito("Lic.", "Tomás", "Peralta", true)
"Lic. Peralta"

// cartelito largo
> escribirCartelito("Ing.", "Dana", "Velázquez", false)
"Ing. Dana Velázquez" */

//modificá esta función
function escribirCartelito(titulo,nombre,apellido,boleano){
    if(boleano){
      return titulo + " " + apellido
    }else{
      return titulo + " " + nombre + " " + apellido
    }
  
  }
  
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
/*Ejercicio 9: Cartelitos óptimos */
/*Ahora que ya podemos escribir nuestros cartelitos identificatorios grandes y chicos, queremos una nueva función que nos dé el cartelito de tamaño óptimo:
si nombre y apellido tienen, en total, más de 15 letras, queremos un cartelito corto;
de lo contrario, queremos un cartelito largo.
Definí la función escribirCartelitoOptimo que tome un título, un nombre y un apellido, y utilizando escribirCartelito genere un cartelito corto o largo, según las reglas anteriores.*/
   
function escribirCartelitoOptimo(titulo,nombre,apellido){
    return escribirCartelito(titulo,nombre,apellido,(longitud(nombre)+longitud(apellido))>15)
  }

/*Ejercicio 10: Cara o ceca

Definí una función decisionConMoneda, que toma tres parámetros y retorna el segundo si el primero es "cara", o el tercero, si sale "ceca".*/

function decisionConMoneda(num1,num2,num3){
    if(num1==="cara"){
      return num2
    }else if(num1==="ceca") {
      return num3
    }
}

/*Ejercicio 11: ¡Envido! */
/*Queremos saber el valor de las cartas de truco cuando jugamos al envido. Sabemos que:
todas las cartas del 1 al 7, inclusive, valen su numeración
las cartas del 10 al 12, inclusive, valen 0
no se juega con 8s ni con 9s

Definí una función valorEnvido, que tome un número de carta y retorne su valor de envido.*/

function valorEnvido(numCart){
    if(numCart>0 && numCart<8){
      return numCart
    }else if(numCart >= 10 && numCart <= 12){
      return 0
    }
  }

  /*Ejercicio 12: ¡Quiero retruco! */
 /*Bueno, ehm, no, pará, primero queremos calcular cuántos puntos de envido suma un jugador. Sabemos que:
Si las dos cartas son del mismo palo, el valor del envido es la suma de sus valores de envido más 20.
De lo contrario, el valor del envido es el mayor valor de envido entre ellas.
Utilizando la función valorEnvido (que ya definimos por vos), definí la función puntosDeEnvidoTotales que tome los valores y palos de dos cartas y diga cuánto envido suman en total.*/
function puntosDeEnvidoTotales(valor1,palo1, valor2,palo2){
    if(palo1===palo2){
      return valorEnvido(valor1)+valorEnvido(valor2)+20;
    }else {
      return Math.max(valorEnvido(valor1),valorEnvido(valor2));
    }
  }

/*Ejercicio 13: ¡Quiero vale cuatro!*/
/*Cuando se juega al truco, los equipos oponentes alternativamente pueden subir la apuesta. Por ejemplo, si un jugador canta truco, otro jugador puede cantarle retruco. Obviamente, los puntos que están en juego son cada vez mayores:

                Canto	Puntos en juego
                truco	      2
                retruco 	  3
                vale cuatro	  4

Definí la función valorCantoTruco, que tome el canto y retorne cuántos puntos vale.*/

function valorCantoTruco (canto){
    if(canto==="truco"){
      return 2;
    }else if (canto === "retruco"){
      return 3;
    }else {
      return 4;
    }
  }
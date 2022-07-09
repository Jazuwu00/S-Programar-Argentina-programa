/*Ejercicio 1: ¡Que el último apague la luz! 
Empecemos por algo sencillo, ¿te acordás del operador ! ? Se lo denomina negación, not o complemento lógico y sirve para negar un valor booleano.

Si tengo el booleano representado por tieneHambre, el complemento será !tieneHambre.

Definí el procedimiento usarCierre para que podamos abrir y cerrar el cierre de una mochila.*/

    let mochilaAbierta = true;

    function usarCierre (){
    mochilaAbierta  =!mochilaAbierta ;
    }

/*Ejercicio 2: Negar no cuesta nada
 Definí esMayorDeEdad, que recibe una edad, y luego esMenorDeEdad a partir de ella*/

 function esMayorDeEdad(edad){
    return edad>=18;
  }
  function esMenorDeEdad(edad){
    return !esMayorDeEdad(edad);
  }

/*Ejercicio 3: Los peripatéticos
Definí una función esPeripatetico que tome la profesión de una persona, su nacionalidad y la cantidad de kilómetros que camina por día. Alguien es peripatético cuando es 
un filósofo griego y le gusta pasear (camina más de 2 kilómetros por día).*/

function esPeripatetico (profesion, nacionalidad,kmxDia){
    return profesion==="filósofo" && nacionalidad==="griego"&& kmxDia >2;
  }

/*Ejercicio 4: La verdad detrás de la conjunción
En la lógica booleana, se puede definir el comportamiento de un operador con una tabla de verdad donde A y B son las expresiones o valores de verdad a ser operados y el símbolo ^ representa la conjunción. Cada celda tiene una V si representa verdadero o F si representa falso.

Por ejemplo, supongamos que una casa consume poca energía si se usa el aire acondicionado a 24 grados y tiene al menos 5 lamparitas bajo consumo. Podemos representar las expresiones de la siguiente forma:

A: En la casa se usa el aire acondicionado a 24 grados
B: La casa tiene al menos 5 lamparitas bajo consumo
A ^ B: La casa consume poca energía
Como indicamos, la casa consume poca energía (A^B) cuando tanto A como B son verdaderos. Esto se puede representar mediante la siguiente tabla de verdad:

A	B	A ^ B
V	V	  V
V	F	  F
F	V	  F
F	F	  F
En el mundo de la lógica estas expresiones se llaman proposiciones. Pero… ¿qué cosas pueden ser una proposición? Sólo hace falta que porten un valor de verdad, es decir, cualquier expresión booleana puede ser una proposición.*/

/*Ejercicio 5: ¡Juguemos al T.E.G.!
¿Y si basta con que una de varias condiciones se cumpla para afirmar que una expresión es verdadera? Podemos utilizar otro de los operadores que ya conocés, ¡la disyunción lógica!

Recordá que se lo representa con el símbolo || y también se lo conoce como el operador or.

En el famoso juego T.E.G., un jugador puede ganar de dos formas: cumpliendo su objetivo secreto o alcanzando el objetivo general de conquistar 30 países. */

/*Ejercicio 6: Y ahora... ¿quién podrá ayudarnos?
Nuestra amiga Dory necesitaba hacer algunos trámites en el banco, pero cuando llegó notó que estaba cerrado.
Para evitar que le ocurra nuevamente, vamos a definir una función que ayude a la gente despistada como ella.
Sabemos que el banco está cerrado cuando:
Es feriado, 
Es fin de semana, o
No estamos dentro del horario bancario.
La función dentroDeHorarioBancario ya la definimos por vos: recibe un horario (una hora en punto que puede ir desde las 0 hasta las 23) y nos dice si está comprendido en la franja de atención del banco.

Definí las funciones esFinDeSemana y estaCerrado. Tené en cuenta que los días se reciben en minúscula: */
function estaCerrado(esFeriado, dia, horario) {
    return esFeriado || esFinDeSemana(dia) || !dentroDeHorarioBancario(horario);
  }
  
  function esFinDeSemana (dia){
    return dia==="sabado" || dia==="domingo";
  }
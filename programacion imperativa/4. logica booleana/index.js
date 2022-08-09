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

/*Ejercicio 7: Claroscuro 
Oli está diseñando una página web y se está centrando en el contraste de sus componentes. Para lograrlo, nos pidió que definamos la función tieneContraste que recibe como argumentos el color de la letra y el color del fondo de la página y retorna si la página tiene contraste.
Para empezar ya contamos con la función esTonoClaro que toma un color por parámetro y retorna si es claro.

Definí la función tieneContraste. Para que la página tenga contraste tiene que tener el fondo claro y la letra no o bien tener la letra clara y el fondo no.*/

function tieneContraste (colorFondo, colorLetra){ 

  return esTonoClaro(colorFondo) !== esTonoClaro(colorLetra)
}

/*Ejercicio 8: La verdad es que no hay una verdad
Ahora pensemos cómo sería la tabla de verdad que representa el comportamiento de la función que acabás de hacer.

La proposición es esTonoClaro, y el valor de verdad que porte dependerá de cada color que esté evaluando.

El booleano final resultará de operar estos colores mediante tieneContraste:

la letra tiene    el fondo tiene tono claro	   tiene contraste
 tono claro	   
  true	              true	                          false
  true	              false	                          true
  false	              true	                          true
  false	              false                          	false */


/*Ejercicio 9: ¡Hola! Mi nombre es Xor
 definí la función genérica xor, que tome dos booleanos y retorne el valor de verdad correspondiente.*/
 function xor( booleano1, booleano2){
  return booleano1 !== booleano2
}

/*Ejercicio 10: Precedencia
Cuando una expresión matemática tiene varios operadores, sabemos que las multiplicaciones y divisiones se efectuarán antes que las sumas y las restas:
5 * 3 + 8 / 4 - 3 = 14
Al igual que en matemática, cuando usamos operadores lógicos las expresiones se evalúan en un orden determinado llamado precedencia. */

/*Ejercicio 11: Un ejercicio sin precedentes
Definí la función sePuedeConcentrar que recibe una bebida, su temperatura y un booleano que nos dice si Delfi está programando:

> sePuedeConcentrar('té', 100, true)
true

> sePuedeConcentrar('mate', 70, true)
false

> sePuedeConcentrar('té', 95, false)
false
¡Intentá resolverlo en una única función! Después vamos a ver cómo quedaría si delegamos.*/

function sePuedeConcentrar(bebida, temperatura , programando){
  return programando && ((bebida === "té" && temperatura >= 95)) || programando && ((bebida === "mate" && temperatura === 80))
}

/*Ejercicio 12: ¿Puedo subir?
En un parque de diversiones de la ciudad instalaron una nueva montaña rusa y nos pidieron ayuda para que le digamos a las personas si pueden subirse o no antes de hacer la fila. Los requisitos para subir a la atracción son:
Alcanzar la altura mínima de 1.5m (o 1.2m si está acompañada por una persona adulta)
No tener ninguna afección cardíaca
Definí la función de 3 parámetros puedeSubirse que recibe una altura de una persona en metros, si está acompañada y si tiene alguna afección cardíaca. */
function puedeSubirse (altura, estaAcompañada, tieneAfeccion ){
  return altura>=1.5 && !tieneAfeccion || altura === 1.2 && estaAcompañada && !tieneAfeccion
}
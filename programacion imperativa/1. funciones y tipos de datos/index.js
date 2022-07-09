/* Ejercicio 6: Poniendo topes /*
Necesitamos una función que diga cuánta plata 
queda en tu cuenta (que tiene un cierto saldo) si extráes un cierto monto.
Pero como no queremos quedarnos en negativo, si el monto a extraer
es mayor al saldo, nuestro saldo debe quedar en cero.*/

function extraer(saldo, monto) {
    return Math.max(saldo - monto , 0);
  }

/*Ejercicio 7: Libros de la buena memoria*/
/*Dani dice que a alguien leGustaLeer, cuando la cantidad 
de libros que recuerda haber leído es mayor a 20. */

function leGustaLeer(libros){
    return libros>20
}

/*Ejercicio 8: Booleanos*/
/*definí las siguientes funciones:
estaEntre:que tome tres números y diga si el primero es mayor al segundo y menor al tercero.
estaFueraDeRango:que tome tres números y diga si el primero es menor al segundo o mayor al tercero*/

function estaEntre(num1,num2,num3){
    return num1>num2 && num1<num3
  }
  function estaFueraDeRango(num1,num2,num3){
    return num1<num2 || num1 >num3
  }

/*Ejercicio 9: Palabras, sólo palabras*/
/*definí la función esFinDeSemana que tome un string que represente el nombre 
de un día de la semana, y nos diga si es "sábado" o "domingo".*/

function esFinDeSemana(dia){
    return dia==="sabado" || dia==="domingo";
}

/*Ejercicio 10: Operando strings */
/* definí la función longitudNombreCompleto, que tome un nombre y un apellido, y
 retorne su longitud total, contando un espacio extra para separar a ambos */

 function longitudNombreCompleto(nombre,apellido){
    return longitud(nombre)+longitud(apellido)+1;
}

/*Ejercicio 11: ¡GRITAR!*/
/*Definí la función gritar. Te dejamos para que uses la función convertirEnMayuscula, que básicamente convierte en mayúsculas un string.*/

function gritar(grito){
    return "¡"+convertirEnMayuscula(grito)+"!"
  }

/*Ejercicio 12: ¿Y qué tal si...?*/
/*definí la función maximo, que funcione como Math.max (¡no vale usarla!) y  retorne el máximo entre dos números. Por ejemplo, el máximo entre 4 y 5 es 5, y el máximo entre 10 y 4, es 10.*/

function maximo(num1, num2){
    if(num1 >num2){
        return num1;
    } else{
        return num2;
    }
}
/*Ejercicio 13: ¿De qué signo sos?*/
/*Definí la función signo, que dado un número nos retorne:
1 si el número es positivo
0 si el número es cero
-1 si el número es negativo */

function signo(numero){
    if(numero>0){
        return 1;
    }else if (numero===0){
        return 0;
    }else{
        return -1;
    }
}
/*Ejercicio 14: El retorno del booleano*/
/*Para Ema un número es de la suerte si:
es positivo, y
es menor a 100, y
no es el 15.
Definí la función esNumeroDeLaSuerte que dado un número diga si cumple la lógica anterior. 
¡No vale usar if!*/

function esNumeroDeLaSuerte(numero){
    return numero>0 && numero<100 && numero!==15;
}

/*Ejercicio 15: Los premios*/
/*El jurado de un torneo nos pidió la función medallaSegunPuesto que retorne la medalla que le corresponde a los primeros puestos, según la siguiente lógica:
primer puesto: le corresponde "oro"
segundo puesto: le corresponde "plata"
tercer puesto: le corresponde "bronce"
otros puestos: le corresponde "nada"*/

function medallaSegunPuesto(puesto){
    if(puesto===1){
        return "oro";
    } else if(puesto===2){
        return "plata";
    } else if(puesto===3){
        return "bronce"
    }else {
        return "nada"
    }
}

/*Ejercicio 16: Tipos de datos*/

/*Tipo de dato	              Representa  	Ejemplo	Operaciones
Números	cantidades          	4947	      +, -, *, %, <, etc
Boolean	valores de verdad   	true	        &&, !, etc
Strings	texto	               "hola"	    longitud, comienzaCon, etc */

/*Ejercicio 17: Datos de todo tipo*/

/*¡Para finalizar veamos algunos ejemplos!

4 + 4         vale 8.
"4" + "4"     vale "44".
"on" + "ce"   vale "once".
true && false vale false.
5 >= 6        vale false. */
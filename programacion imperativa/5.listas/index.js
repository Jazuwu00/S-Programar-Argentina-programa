/*Ejercicio 7: Trasladar 
Definí el procedimiento trasladar, que tome dos listas y un elemento de la primera. trasladar debe sacar el elemento de la primera lista y agregarlo en la segunda.*/
function trasladar(lista, lista2, elemento){
    remover(lista, elemento)
    agregar(lista2,elemento)
  }

 /*Ejercicio 9: Contiene 
 Definí la función contiene que nos diga si una lista contiene un cierto elemento.*/

 function contiene(lista, elemento){
    return posicion(lista,elemento) !== -1
  }

/* Ejercicio 11: Más premios
Si le pedís un elemento en una posición igual o mayor al tamaño de la lista, vas a obtener undefined. No parece algo terrible, pero el problema es que con undefined no podés hacer nada realmente útil.

Así que la advertencia es: ¡no te pases de índice!

Teniendo esto en cuenta, va un desafío: definí nuevamente la función medallaSegunPuesto, pero esta vez usando como máximo un único if. Quizás las listas te pueden ser útiles acá .

Te recordamos qué hace la función: tiene que devolver la medalla que le corresponde a los primeros puestos de una competencia.*/

function medallaSegunPuesto(puesto){
    let medallas = ["oro","plata","bronce"];
    if(puesto > 3 ){
      return "nada"
    }
    return medallas[puesto -1];
  
  }

  /*Ejercicio 12: No te olvides de saludar 
  Completá el procedimiento saludar que recibe una lista de personas e imprime un saludo con "hola" para cada una de ellas.*/
  function saludar(personas) {
    for(let persona of personas) {
      imprimir ("hola "+ persona)
    }
  }
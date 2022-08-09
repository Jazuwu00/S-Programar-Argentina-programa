/*Ejercicio 3: Todas las ganancias, la ganancia
¿Empezás a ver un patrón? Tratá de escribir gananciaTotal4 que funcione para 4 elementos. */

function gananciaTotal4(balancesDeUnPeriodo) {
    let sumatoria = 0;
    sumatoria = sumatoria + balancesDeUnPeriodo[0].ganancia;
    sumatoria = sumatoria + balancesDeUnPeriodo[1].ganancia;
    sumatoria = sumatoria + balancesDeUnPeriodo[2].ganancia;
     sumatoria = sumatoria + balancesDeUnPeriodo[3].ganancia;
    return sumatoria;
  }

  /*Ejercicio 4: Nos visita un viejo amigo 
  Lo que tenemos que hacer, entonces, es repetir la operación de acumular varias veces, una por cada elemento de la lista. ¡Digamos hola (nuevamente) al for...of!
   
function gananciaTotal(balancesDeUnPeriodo) {
  let sumatoria = 0;
  for (let balance of balancesDeUnPeriodo) {
    sumatoria = sumatoria + balance.ganancia;
  }
  return sumatoria;
}
Como ves, el for...of nos permite visitar y hacer algo con cada elemento de una lista; en este caso, estaremos visitando cada balance de balancesDeUnPeriodo.*/


/*Ejercicio 5: Cuentas claras
¡Ana tiene nuevos requirimientos! Ahora nos pidió lo siguiente: "Quiero saber cuántos balances fueron positivos, es decir, aquellos en los que la ganancia fue mayor a cero".

Completá la función cantidadDeBalancesPositivos. Si prestás atención, notarás que tiene una estructura similar al problema anterior. */

function cantidadDeBalancesPositivos(balancesDeUnPeriodo) {
    let cantidad = 0;
    for (let balance of balancesDeUnPeriodo) {
      cantidad = cantidad +  (balance.ganancia > 0)
    }
    return cantidad;
  }
  
/*Ejercicio 6: La ganancia promedio
Pasemos al siguiente requerimiento de Ana. Ya podemos calcular una sumatoria de ganancias y también crear contadores, ahora vamos a calcular promedios.

Ana quisiera saber dado un conjunto cualquiera de balances cuál es su gananciaPromedio.

> gananciaPromedio([
      { mes: "marzo", ganancia: 8 }, 
      { mes: "agosto", ganancia: 10 }
  ])
        9 */

function gananciaPromedio(balancesDeUnPeriodo){
   return (gananciaTotal(balancesDeUnPeriodo)/longitud(balancesDeUnPeriodo));
 }

 /*Ejercicio 7: Quién gana, quién pierde
Viendo que podemos hacer todo lo que nos pide, Ana quiere saber la ganancia promedio de los balances positivos.

Definí las funciones:

gananciaPositiva, que es la suma de las ganancias de los balances positivos
promedioGananciasPositivas invocando gananciaPositiva y cantidadDeBalancesPositivos. */

function gananciaPositiva(balancesDeUnPeriodo){
    let cantidad = 0;
    for (let balance of balancesDeUnPeriodo) {
      if(balance.ganancia > 0)
        cantidad = cantidad +  balance.ganancia 
    }
    return cantidad;
  }
  
  function promedioGananciasPositivas (balancesDeUnPeriodo){
    return gananciaPositiva(balancesDeUnPeriodo)/ cantidadDeBalancesPositivos(balancesDeUnPeriodo)
  }

  /*Ejercicio 8: Soy el mapa, soy el mapa
Lamentablemente no se puede usar la función promedio con nuestra lista de registros . Lo que necesitamos es una lista que tenga solo las ganancias de cada balance. Para ello debemos transformar, o mapear, cada elemento de la lista.

Completá la función ganancias que toma una lista de balances y devuelve una lista que solo posea solo las ganancias de cada uno. */


function ganancias(balancesDeUnPeriodo) {
    let ganancias = [];
    for (let balance of balancesDeUnPeriodo) {
      agregar (ganancias, balance.ganancia)
    }
    return ganancias;
  }

/*Ejercicio 9: A filtrar, a filtrar cada cosa en su lugar
Con la programación se puede hacer cualquier cosa, o casi . Ya hicimos una función para poder saber la cantidad de balances positivos (cantidadDeBalancesPositivos), ahora vamos a ver cómo podemos hacer para saber cuáles son esos balances.

Completá la función balancesPositivos que toma los balances de un período y devuelve una lista con aquellos cuya ganancia fue mayor a cero. */

function balancesPositivos(balancesDeUnPeriodo) {
    let balances = [];
    for (let balance of balancesDeUnPeriodo) {
     if(balance.ganancia >  0 ){
       agregar(balances, balance)
     }
    }
    return balances;
  }
  

/*Ejercicio 10: Un promedio más positivo
Ahora que tenemos la función ganancias y balancesPositivos podemos utilizar la función promedio genérica para saber cuál es el promedio de ganancia de los balances positivos.

Definí la función gananciasDeBalancesPositivos y luego usala junto a promedio para definir promedioDeBalancesPositivos. */

function gananciasDeBalancesPositivos (balancesDeUnPeriodo){
  let ganancias = [];
  for (let balance of balancesPositivos(balancesDeUnPeriodo)) {

    agregar(ganancias, balance.ganancia)

  }
  return ganancias;
}

function promedioDeBalancesPositivos(balancesDeUnPeriodo){
  return promedio(gananciasDeBalancesPositivos(balancesDeUnPeriodo))
}

/*Ejercicio 11: Esto es lo máximo

Vamos a conocer una nueva función, maximo, que nos permite conocer cuál es el mayor valor en una lista de números. Por ejemplo:
> maximo([5, 8, 10, 42, 87, 776])
776
Usando esta nueva función, definí la función maximaGanancia que nos diga cuál es la ganancia más alta entre los balances de un período de tiempo.*/

function maximaGanancia(maxganancia) {
 
  return  maximo(ganancias(maxganancia));
}

/*Ejercicio 12: Como mínimo
Suponemos que adivinaste el nombre. En caso que no, es minimo.

Definí la función minimaGananciaPositiva que nos diga cuál es la ganancia más baja de todos los balances positivos.*/

function minimaGananciaPositiva (minganancias){
  return minimo( gananciasDeBalancesPositivos(minganancias))
}

/*Ejercicio 13: Los mejores meses del año
¡Vamos a terminar esta lección con todo!

Para eso vamos a hacer las siguientes funciones:

meses, la cual dada una lista con registros devuelve una lista de meses ;
afortunados, que filtra aquellos registros que tuvieron una ganancia mayor a $1000 ;
mesesAfortunados, devuelve aquellos meses que fueron afortunados. 

Definí las funciones meses, afortunados, mesesAfortunados.*/

function meses(registros){
  let meses = []
  for (let mes of registros) {

    agregar(meses, mes.mes)
  }
  return meses;
}
function afortunados(registros){
  let afortunados =[];
  for (let mes of registros) {
    if (mes.ganancia>1000){
         agregar(afortunados, mes)
        }
   
  }
  return afortunados;
}
function mesesAfortunados(registros){
 return meses(afortunados(registros));
}
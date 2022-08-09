=begin   
Ejercicio 1: Entrando en Calor
¡Vamos a crear una biblioteca de videojuegos! Para empezar, tendremos tres videojuegos, de los cuales sabemos lo siguiente:

CarlosDuty: es violento. Su dificultad se calcula como 30 - @cantidad_logros * 0.5. Y si se lo juega por más de 2 horas seguidas, se le suma un logro a su cantidad. Inicialmente, el juego no tiene logros.
TimbaElLeon: no es violento. Su dificultad inicial es 25 y crece un punto por cada hora que se juegue.
Metroide: es violento sólo si @nivel_espacial es mayor a 5. Este nivel arranca en 3 pero se incrementa en 1 cada vez que se lo juega, sin importar por cuánto tiempo. Además, su dificultad siempre es 100.
Definí estos tres objetos de forma que entiendan los mensajes dificultad, violento? y jugar!(un_tiempo).
=end


module CarlosDuty
    @cantidad_logros = 0
    
    def self.dificultad 
      30 - @cantidad_logros * 0.5
    end
    
    def self.violento?
      true
    end
  
    def self.jugar!(un_tiempo)
      if un_tiempo> 2 
        @cantidad_logros += 1
      end 
    end 
  end
  
  
  module TimbaElLeon
    @dificultad =25
  
    def self.dificultad 
      @dificultad
    end
  
    def self.violento?
      false
    end
  
    def self.jugar!(un_tiempo)
      if un_tiempo >= 1
        @dificultad += un_tiempo
  
      end
    end
  
  end
  
  
  
  module Metroide
    @nivel_espacial = 3 
    
    def self.jugar!(un_tiempo)
      @nivel_espacial +=1
    end
  
    def self.dificultad 
      100
    end
  
    def self.violento?
      if @nivel_espacial >5 
        true
      end
    end
  end

  
=begin   
Ejercicio 2: Creando una lista
Ahora que ya tenemos nuestros videojuegos , vamos a ordenarlos en algún lugar.

Para ello necesitamos definir un objeto, la Juegoteca, que contenga otros objetos: nuestros videojuegos. Para ello vamos a usar una lista de objetos: es un tipo de colección en la cual los elementos pueden repetirse. Es decir, el mismo objeto puede aparecer más de una vez.

Por ejemplo, la lista de números 2, 3, 3 y 9 se escribe así:

[2, 3, 3, 9]
Veamos si se entiende: definí un objeto Juegoteca que tenga un atributo juegos con su correspondiente getter. La Juegoteca tiene que tener en primer lugar el juego CarlosDuty, luego TimbaElLeon y por último Metroide.

=end

module Juegoteca 
    @juegos = [ CarlosDuty , TimbaElLeon , Metroide]
    
    def self.juegos
      @juegos
    end
   
  end


=begin   
  Ejercicio 3: Algunos mensajes básicos
¡Tengo una colección! ¿Y ahora qué...?

Todas las colecciones entienden una serie de mensajes que representan operaciones o consultas básicas sobre la colección.

Por ejemplo, podemos agregar un elemento enviándole push a la colección o quitarlo enviándole delete:

numeros_de_la_suerte = [6, 7, 42]
numeros_de_la_suerte.push 9
  # Agrega el 9 a la lista...
numeros_de_la_suerte.delete 7
  # ...y quita el 7.
También podemos saber saber si un elemento está en la colección usando include?:

numeros_de_la_suerte.include? 6
  # Devuelve true, porque contiene al 6...
numeros_de_la_suerte.include? 8
  # ...devuelve false, porque no contiene al 8.
Finalmente, podemos saber la cantidad de elementos que tiene enviando size:

numeros_de_la_suerte.size
  # Devuelve 3, porque contiene al 6, 42 y 9
¡Probá enviarle los mensajes push, delete, include? y size a la colección numeros_de_la_suerte!

=end






=begin
    Ejercicio 4: Set o no set
Hasta ahora sólo vimos un tipo de colección: las listas. ¡Pero hay más!

Otro tipo muy común de colecciones son los sets (conjuntos), los cuales tienen algunas diferencias con las listas:

no admiten elementos repetidos;
sus elementos no tienen un orden determinado.
Vamos a ver un ejemplo transforma una lista en un set utilizando to_set:

> numeros_aleatorios = [1,27,8,7,8,27,87,1]
> numeros_aleatorios
=> [1,27,8,7,8,27,87,1]
> numeros_aleatorios.to_set
=> #<Set: {1, 27, 8, 7, 87}>
Algo importante a tener en cuenta es que tanto las listas como los sets tienen mensajes en común. Dicho de otro modo, son polimórficos para algunos mensajes. Por ejemplo: push, delete, include? y size.

Sin embargo, los siguientes mensajes...

numeros_de_la_suerte = [6, 7, 42]
numeros_de_la_suerte.first
  # Nos retorna el primer elemento de la lista
numeros_de_la_suerte.last
  # Nos retorna el último de la lista
numeros_de_la_suerte.index 7
  # Nos retorna la posición de un elemento en la lista
... no podemos enviárselos a un set porque sus elementos no están ordenados.

Pero no te preocupes, todos lo que veamos de ahora en adelante en esta lección funciona tanto para listas como para sets.

    
=end





=begin   

Ejercicio 5: Mejorando la Juegoteca
Primero nos encargamos de los videojuegos, y ahora ya conocés qué mensajes entienden las listas. ¡Es momento de darle funcionalidad a la Juegoteca!

Nuestra Juegoteca maneja puntos. Agregá el código necesario para que entienda los siguientes mensajes:

puntos: nos dice cuantos puntos tiene la Juegoteca. Inicialmente son 0.
adquirir_juego!(un_juego): agrega el juego a la Juegoteca, y le suma 150 puntos.
borrar_juego!(un_juego): quita un juego de la Juegoteca, pero no resta puntos.
completa?: se cumple si la Juegoteca tiene más de 1000 puntos y más de 5 juegos.
juego_recomendable?(un_juego): es verdadero para un_juego si no está en la Juegoteca y es violento?.

=end

module Juegoteca
  @juegos=[CarlosDuty,TimbaElLeon,Metroide]
  @puntos=0
  def self.juegos
    @juegos
  end
  def self.puntos
    @puntos
  end
  def self.adquirir_juego!(un_juego)
    @juegos.push (un_juego)
    @puntos += 150
  end
  def self.borrar_juego!(un_juego)
    @juegos.delete (un_juego)
  end
  def self.juego_recomendable?(un_juego)
    !(self.juegos.include? (un_juego)) && (un_juego.violento?)
  end
  def self.completa?
    @puntos>1000 && @juegos.size> 5
  end

end


=begin   
Ejercicio 6: ¿Bloques? ¿Eso se come?
¡Pausa! Antes de continuar, necesitamos conocer a unos nuevos amigos: los bloques.

Los bloques son objetos que representan un mensaje o una secuencia de envíos de mensajes, sin ejecutar, lista para ser evaluada cuando corresponda. La palabra con la que se definen los bloques en Ruby es proc. Por ejemplo, en este caso le asignamos un bloque a incrementador:

un_numero = 7
incrementador = proc { un_numero = un_numero + 1 }
Ahora avancemos un pasito: en este segundo ejemplo, al bloque { otro_numero = otro_numero * 2 } le enviamos el mensaje call, que le indica que evalúe la secuencia de envíos de mensajes dentro de él.

otro_numero = 5
duplicador = proc { otro_numero = otro_numero * 2 }.call
¿Cuánto vale un_numero luego de las primeras dos líneas? Tené en cuenta que la secuencia de envío de mensajes en el bloque del primer ejemplo está sin ejecutar. En cambio, en el ejmplo de otro_numero estamos enviando el mensaje call. Por lo tanto:

un_numero vale 7, porque el bloque incrementador no está aplicado. Por tanto, no se le suma 1.
otro_numero vale 10, porque el bloque duplicador se aplica mediante el envío de mensaje call, que hace que se ejecute el código dentro del bloque. Por tanto, se duplica su valor.

=end



=begin   
Ejercicio 7: Bloques con parámetros
Los bloques también pueden recibir argumentos para su aplicación. Por ejemplo, sumar_a_otros_dos recibe dos argumentos, escritos entre barras verticales | y separados por comas:

un_numero = 3
sumar_a_otros_dos = proc { |un_sumando, otro_sumando| un_numero = un_numero + un_sumando + otro_sumando }
Para aplicar el bloque sumar_a_otros_dos, se le pasan los argumentos deseados al mensaje call:

> sumar_a_otros_dos.call(1,2)
=> 6
Volvamos a los videojuegos...

En la Biblioteca podés ver el objeto TimbaElLeon. Para resolver este ejercicio, no nos interesa cómo están definidos los métodos de este objeto, solo queremos recordar los mensajes que entiende ¡por eso hay puntos suspensivos!

Asignale a la variable jugar_a_timba un bloque que reciba un único parámetro. El bloque recibe una cantidad de minutos y debe hacer que se juegue a TimbaElLeon durante ese tiempo, pero recordá que jugar! espera una cantidad de horas.

=end


jugar_a_timba = proc { |tiempo| TimbaElLeon.jugar!(tiempo/60)}


=begin   

Ejercicio 8: Filtrando quienes cumplen
¿Qué pasa cuando queremos todos aquellos objetos que cumplan con una condición determinada en una cierta colección? Por ejemplo, si de una lista de números queremos los mayores a 3.

Lo que usamos es el mensaje select de las colecciones. select recibe un bloque con un parámetro que representa un elemento de la colección y una condición booleana como código, y lo que devuelve es una nueva colección con los elementos que la cumplen.

algunos_numeros = [1, 2, 3, 4, 5]
mayores_a_3 = algunos_numeros.select { |un_numero| un_numero > 3 }
¿Y cuándo se aplica ese bloque que recibe el select? ¡El select es quien decide! La colección va a aplicarlo con cada uno de los objetos (un_numero) cuando corresponda durante el seleccionado (o filtrado) de elementos.

> mayores_a_3
=> [4, 5]
Mientras tanto, en nuestra juegoteca...

¡Ahora te toca a vos! Definí el método juegos_violentos que retorna los juegos de la Juegoteca que cumplan violento?.

=end 

module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]

  def self.juegos
    @juegos
  end
  def self.juegos_violentos 
    juegos_violentos = 
    @juegos.select { |juegos| juegos.violento?  }
  end
end

=begin   

Ejercicio 9: El que busca encuentra
¿Y si en vez de todos los elementos que cumplan una condición, sólo queremos uno? ¡Usamos find!

algunos_numeros = [1, 2, 3, 4, 5]
uno_mayor_a_3 = algunos_numeros.find { |un_numero| un_numero > 3 }
Mientras que select devuelve una colección, find devuelve únicamente un elemento.

> uno_mayor_a_3
=> 4
¿Y si ningún elemento de la colección cumple la condición? Devuelve nil, que, como aprendiste antes, es un objeto que representa la nada - o en este caso, que ninguno cumple la condición.

Veamos si se entiende: hacé que la Juegoteca entienda juego_mas_dificil_que(una_dificultad), que retorna algún juego en la Juegoteca con más dificultad que la que se pasa como argumento.

=end

module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]

  def self.juegos
    @juegos
  end
  def self.juego_mas_dificil_que(una_dificultad)
    juego_mas_dificil_que=@juegos.find { |juegos| juegos.dificultad > una_dificultad }
  end
end

=begin   

Ejercicio 10: ¿Alguno cumple? ¿Todos cumplen?
Para saber si todos los elementos de una colección cumplen un cierto criterio podemos usar el mensaje all?, que también recibe un bloque. Por ejemplo, si tenemos una colección de estudiantes, podemos saber si todo el grupo aprueba de la siguiente forma:

estudiantes.all? { |un_estudiante| un_estudiante.aprobo? }
De manera muy similar podemos saber si algún elemento de la colección cumple cierta condición mediante el mensaje any?. Siguiendo el ejemplo anterior, ahora queremos saber si por lo menos alguien aprobó :

estudiantes.any? { |un_estudiante| un_estudiante.aprobo? }
Definí los siguientes métodos en nuestra Juegoteca:

mucha_violencia?: se cumple si todos los juegos que posee son violentos.
muy_dificil?: nos dice si alguno de los juegos tiene más de 25 puntos de dificultad.

=end 

module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]
  
  def self.juegos
    @juegos
  end
 def self.mucha_violencia? 
   @juegos.all?{ |juegos| juegos.violento?}
 end
 def self.muy_dificil?
    @juegos.any? { |juegos| juegos.dificultad > 25}
 end
  
end


=begin   

Ejercicio 11: El viejo y querido map
El mensaje map nos permite, a partir de una colección, obtener otra colección con cada uno de los resultados que retorna un envío de mensaje a cada elemento.

En otras palabras, la nueva colección tendrá lo que devuelve el mensaje que se le envíe a cada uno de los elementos. Por ejemplo, si usamos map para saber los niveles de energía de una colección de golondrinas:

> [Pepita, Norita].map { |una_golondrina| una_golondrina.energia }
=> [77, 52]
Al igual que el resto de los mensajes que vimos hasta ahora, map no modifica la colección original ni sus elementos, sino que devuelve una nueva colección.

Agregá a la Juegoteca un método llamado dificultad_violenta que retorne una colección con la dificultad de sus juegos_violentos.

=end

module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]
  
  def self.juegos
    @juegos
  end
  def self.juegos_violentos 
 juegos_violentos = 
 @juegos.select { |juegos| juegos.violento?  }
  end
  def self.dificultad_violenta
    juegos_violentos.map { |juegos| juegos.dificultad }

  end
end


=begin   

Ejercicio 12: ¿Cuántos cumplen? ¿Cuánto suman?
Volviendo a nuestra colección de estudiantes. Ya preguntamos si todo el grupo aprobó o si al menos alguien aprobó utilizando all?y any?. ¿Y si queremos saber cuántos aprobaron? Usamos count:

estudiantes.count { |un_estudiante| un_estudiante.aprobo? }
count nos dice cuántos elementos de una colección cumplen la condición. Por otro lado, para calcular sumatorias tenemos el mensaje sum. Si queremos conocer la suma de todas las notas de la colección de estuidantes, por ejemplo, podemos hacer:

estudiantes.sum { |un_estudiante| un_estudiante.nota_en_examen }
Veamos si se entiende: agregá a la Juegoteca el método promedio_de_violencia, cuyo valor sea la sumatoria de dificultad de los juegos violentos dividida por la cantidad de juegos violentos de la Juegoteca.

=end


module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]

  def self.juegos
    @juegos
  end
  def self.juegos_violentos 
    juegos_violentos = 
    @juegos.select { |juegos| juegos.violento?  }
  end

  def self.promedio_de_violencia
    juegos_violentos.sum { |juegos| juegos.dificultad } / juegos_violentos.count{ |juegos| juegos.violento? }
  end
end

=begin   

Ejercicio 13: Jugando a todo
Hasta ahora, todos los mensajes que vimos de colecciones (con la excepción de push y delete) no están pensados para producir efectos sobre el sistema. ¿Qué ocurre, entonces, cuando queremos hacer algo con cada elemento? A diferencia del map, no nos interesan los resultados de enviar el mismo mensaje a cada objeto, sino mandarle un mensaje a cada uno con la intención de producir un efecto.

Es en este caso que nos resulta de utilidad el mensaje each.

Por ejemplo, si queremos que de una colección de golondrinas, aquellas con energía mayor a 100 vuelen a Iruya, podríamos combinar select y each para hacer:

golondrinas
  .select { |una_golondrina| una_golondrina.energia > 100 }
  .each { |una_golondrina| una_golondrina.volar_hacia! Iruya }
Ya que casi terminamos la guía y aprovechando que tenemos una colección de videojuegos, lo que queremos es... ¡jugar a todos!

Definí el método jugar_a_todo! en la Juegoteca, que haga jugar a cada uno de los juegos durante 5 horas. Recordá que los juegos entienden jugar!(un_tiempo).

=end

module Juegoteca 
  @juegos = [ CarlosDuty , TimbaElLeon , Metroide]
  
  def self.juegos
    @juegos
  end
  
  def self.jugar_a_todo!
   @juegos.each { |juegos|juegos.jugar!(5)  }
  end
 
end

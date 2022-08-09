=begin Ejercicio 1: Creando a Pepita
Inicialmente en el ambiente solo existen objetos simples como números, strings y booleanos.

Pero como es imposible que quienes diseñan un lenguaje puedan precargar objetos para solucionar todos nuestros problemas, también nos dan la posibilidad de crear los nuestros.

En Ruby, si quisiéramos definir a Norita, escribiríamos el siguiente código:

module Norita
end
Sí, así de simple.

¿Te animás a modificar nuestro código para crear a Pepita? */

//module Pepita

//end

=end



=begin Ejercicio 2: Pepita, ¿me entendés?
En la lección anterior Pepita entendía los mensajes comer_lombriz!, cantar!, volar_en_circulos! y energia.
Con la definición que construimos recién, ¿podrá responderlos? 
=end





=begin
 Ejercicio 3: Los mejores, los únicos, los métodos en objetos
¿Otra vez undefined method? ¿Y ahora qué falta?

Para que un objeto entienda un mensaje debemos "enseñarle" cómo hacerlo, y para ello es necesario definir un método dentro de ese objeto:
module Pepita
   def self.cantar!
   end
end
Un método es, entonces, la descripción de qué hacer cuando se recibe un mensaje del mismo nombre.

Dos cosas muy importantes a tener en cuenta :
Todos los métodos comienzan con def y terminan con end. Si nos falta alguna de estos dos la computadora no va a entender nuestra solución.
Todos los métodos que pertenezcan al mismo objeto van dentro del mismo module.
Agregale a la definición de Pepita los métodos necesarios para que pueda responder a los mensajes cantar!, comer_lombriz! y volar_en_circulos!. 
=end

module Pepita
  def self.cantar!
  end
  
  def self.comer_lombriz!
  end
  
   def self.volar_en_circulos!
  end
end 





=begin
 Ejercicio 4: Perdiendo energía
Acabamos de aprender una de las reglas fundamentales del envío de mensajes: si a un objeto no le decímos cómo reaccionar ante un mensaje, y se lo envíamos, no lo entenderá y nuestro programa se romperá. Y la forma de hacer esto es definiendo un método.

Ahora bien, los métodos que definiste recién no eran muy interesantes: se trataba de métodos vacíos que evitaban que el programa se rompiera, pero no hacían nada. En realidad, Pepita tiene energía y los diferentes mensajes que entiende deberían modificarla.

¿Cómo podríamos decir que cuando Pepita vuela, pierde 10 unidades de energía? ¿Y que inicialmente esta energía es 100? Así:
=end 

module Pepita
  @energia = 100

  def self.volar_en_circulos!
    @energia = @energia - 10
  end
end 




=begin 
Ejercicio 5: Atributos
Analicemos el código que acabamos de escribir:

module Pepita
  @energia = 100

  def self.volar_en_circulos!
    @energia = @energia - 10
  end
end

Decimos que Pepita conoce o tiene un nivel de energía, que es variable, e inicialmente toma el valor 100. La energía es un atributo de nuestro objeto, y la forma de asignarle un valor es escribiendo @energia = 100.

Por otro lado, cuando Pepita recibe el mensaje volar_en_circulos!, su energía disminuye: se realiza una nueva asignación del atributo y pasa a valer lo que valía antes (o sea, @energia), menos 10.

Como la operación @energia = @energia - 10 es tan común, se puede escribir @energia -= 10. Como te imaginarás, también se puede hacer con la suma.

Sabiendo esto:

cambiá la definición del método volar_en_circulos! para que utilice la expresión simplificada;
definí la versión correcta del método comer_lombriz!, que provoca que Pepita gane 20 puntos de energía; 
=end


module Pepita
    @energia = 100
  
    def self.volar_en_circulos!
        @energia -=  10
    end
    
     def self.comer_lombriz!
        @energia += 20
    end
    # Seguí por acá...
end 


=begin 
Ejercicio 6: Conociendo el país
Hasta ahora los métodos que vimos solo producían un efecto. Si bien solo pueden devolver una cosa, ¡pueden producir varios efectos!

Solo tenés que poner uno debajo del otro de la siguiente forma:

def self.comprar_libro!
    @plata -= 300
    @libros += 1
end
Como te dijimos, Pepita podía volar a diferentes ciudades. Y cuando lo hace, cambia su ciudad actual, además de perder 100 unidades de energía. Las distintas ciudades vas a poder verlas en la Biblioteca.

Con esto en mente:

Creá un atributo ciudad en Pepita: la ciudad donde actualmente está nuestra golondrina.
Hacé que la ciudad inicial de pepita sea Iruya.
Definí un método volar_hacia! en Pepita, que tome como argumento otra ciudad y haga lo necesario. 
=end

module Pepita
  @energia = 100
  @ciudad = Iruya

  def self.volar_en_circulos!
    @energia -=  10
  end

  def self.comer_lombriz!
    @energia += 20
  end
  def self.volar_hacia! ciudad
    @ciudad = ciudad
    @energia -=100

  end
end


=begin
 Ejercicio 7: Leyendo el estado
Antes te mostramos que si enviamos el mensaje energia, fallará:

>  Pepita.energia
undefined method `energia' for Pepita:Module (NoMethodError)
El motivo es simple: los atributos NO son mensajes.

Entonces, ¿cómo podríamos consultar la energía de Pepita? Definiendo un método, ¡por supuesto!

=end


=begin
  
Ejercicio 8: Cuestión de estado
Los objetos pueden tener múltiples atributos y al conjunto de estos atributos se lo denomina estado. Por ejemplo, si miramos a Pepita:

module Pepita
  @energia = 100
  @ciudad = Obera

  #...etc...
end
Lo que podemos observar es que su estado está conformado por ciudad y energia, dado que son sus atributos.

El estado es siempre privado, es decir, solo el objeto puede utilizar sus atributos, lo que explica por qué las siguiente consultas que hicimos antes fallaban:

> Pepita.energia = 100
> energia

=end


=begin
  
Avatar2 
Ejercicio 9: ¿Dónde estás?
Queremos saber dónde se encuentra Pepita, para lo cual necesitamos agregarle un mensaje ciudad que nos permita acceder al atributo del mismo nombre.

Inspirándote en la definición de energia, definí el método ciudad que retorne la ubicación de nuestra golondrina.

=end

module Pepita
  @energia = 100
  @ciudad = Obera

  def self.energia
    @energia 
  end

  def self.ciudad
    @ciudad

  end

  def self.cantar!
    'pri pri pri'
  end

  def self.comer_lombriz!
    @energia += 20
  end

  def self.volar_en_circulos!
    @energia -= 10
  end

  def self.volar_hacia!(destino)
    @energia -= 100
    @ciudad = destino
  end
end


=begin
  
Ejercicio 10: Volando alto
Volar hacia un cierto punto no es tarea tán fácil: en realidad, Pepita pierde tanta energía como la mitad de kilómetros que tenga que recorrer.

Aunque en el mapa real no sea así, imaginaremos que las ciudades están ubicadas en línea recta, para facilitar los cálculos:

Tres círculos en una recta horizontal. El primero es Buenos Aires en el kilómetro cero, el segundo es Oberá en el kilómetro mil cuarenta y el tercer es Iruya en el kilómetro mil setecientos diez

Por ejemplo, si Pepita está en Obera y quiere volar a Iruya debe recorrer 670 kilómetros, por lo que perderá 335 unidades de energía.

¿Y si Pepita está en Iruya y quiere volar a Obera? ¡También! La distancia entre dos ciudades siempre es un valor positivo . Para resolver esto contamos con el mensaje abs que entienden los números y nos retorna su valor absoluto:

Sabiendo esto:

Definí el objeto que representa a BuenosAires.
Definí en Obera, Iruya y BuenosAires un método kilometro que retorne la altura a la que se encuentran, según el esquema. ¡Cuidado! No tenés que guardar el valor en un atributo @kilometro sino simplemente retornar el número que corresponde.
Modificá el método volar_hacia! de Pepita para hacer el cálculo de la distancia y alterar su energía. Para acceder al kilometro inicial de Pepita tenes que hacer @ciudad.kilometro.
=end

module Obera
  def self.kilometro
    1040
  end
end

module Iruya
  def self.kilometro
    1710
  end  
end

module BuenosAires
  def self.kilometro
    0
  end

end


module Pepita
  @energia = 1000
  @ciudad = Obera

  def self.energia
    @energia 
  end

  def self.ciudad
    @ciudad
  end

  def self.cantar!
    'pri pri pri'
  end

  def self.comer_lombriz!
    @energia += 20
  end

  def self.volar_en_circulos!
    @energia -= 10
  end

  def self.volar_hacia!(destino)
    @energia -= (@ciudad.kilometro - destino.kilometro).abs/2
    @ciudad = destino
  end
end

=begin 
Ejercicio 11: Delegar es bueno
En el ejercicio anterior vimos que un objeto (en ese caso, Pepita) le puede enviar mensajes a otro que conozca (en ese caso, ciudades como Obera o BuenosAires):

module Pepita
  # ...etc...

  def self.volar_hacia!(destino)
    @energia -= (@ciudad.kilometro - destino.kilometro).abs / 2
    @ciudad = destino
  end
end


Esto se conoce como delegar una responsabilidad, o simplemente, delegar: la responsabilidad de saber en qué kilómetro se encuentra es de la ciudad, y no de Pepita.

A veces nos va a pasar que un objeto tiene un método muy complejo, y nos gustaría subdividirlo en problemas más chicos que el mismo objeto puede resolver. Pero, ¿cómo se envía un objeto mensajes a sí mismo?

Un objeto puede enviarse un mensaje a sí mismo fácilmente usando self como receptor del mensaje.

module Pepita
  # ...etc...

  def self.volar_hacia!(destino)
    self.gastar_energia! destino #¡Ojo! No hicimos Pepita.gastar_energia!(destino)
    @ciudad = destino
  end

  def self.gastar_energia!(destino)
    @energia -= (@ciudad.kilometro - destino.kilometro).abs / 2
  end
end


Pero esto se puede mejorar un poco más. Delegá el cálculo de la distancia en un método distancia_a, que tome un destino y devuelva la distancia desde la ciudad actual hasta el destino.

=end

module Pepita
  @energia = 1000
  @ciudad = Obera

  def self.energia
    @energia 
  end

  def self.ciudad
    @ciudad
  end

  def self.cantar!
    'pri pri pri'
  end

  def self.distancia_a (destino)
    (@ciudad.kilometro - destino.kilometro).abs 
  end

  def self.comer_lombriz!
    @energia += 20
  end

  def self.volar_en_circulos!
    @energia -= 10
  end

  def self.volar_hacia!(destino)
    self.gastar_energia!(destino)
    @ciudad = destino
  end

  def self.gastar_energia!(destino)
    @energia -= (distancia_a (destino)) /2
  end
end


=begin   

Ejercicio 12: ¿Es mi responsabilidad?
Hay un pequeño problema conceptual con la solución anterior: ¿por qué Pepita, una golondrina, es responsable de calcular la distancia entre dos ciudades?

Dicho de otra manera, ¿es necesario contar con una golondrina para poder calcular la distancia entre dos lugares? ¿Cual es el objeto más pequeño que podría saber hacer esto?

¿Lo pensaste? La respuesta es simple: ¡la misma ciudad! Por ejemplo, BuenosAires podría entender un mensaje distancia_a, que tome otra ciudad y devuelva la distancia entre ésta y sí misma.

Modificá la solución del ejercicio anterior para que sean las ciudades las que calculan las distancias. Pensá que no solo Obera debe tener este método, sino también BuenosAires e Iruya, para cuando tenga que volver.
=end 

module Obera
  @ciudad = Obera
  def self.kilometro
    1040
  end
  def self.distancia_a (destino)
    (@ciudad.kilometro - destino.kilometro).abs 
  end
end

module Iruya
  @ciudad = Iruya
  def self.kilometro
    1710
  end  
  def self.distancia_a (destino)
    (@ciudad.kilometro - destino.kilometro).abs 
  end
end

module BuenosAires
  @ciudad = BuenosAires
  def self.kilometro
    0
  end  
  def self.distancia_a (destino)
    (@ciudad.kilometro - destino.kilometro).abs 
  end
end

module Pepita
  @energia = 1000
  @ciudad = Obera
  
  def self.energia
    @energia 
  end
  
  def self.ciudad
    @ciudad
  end
  
  def self.cantar!
    'pri pri pri'
  end
  
  def self.comer_lombriz!
    @energia += 20
  end
  
  def self.volar_en_circulos!
    @energia -= 10
  end
  
  def self.volar_hacia!(destino)
    self.gastar_energia!(destino)
    @ciudad = destino
  end

  def self.gastar_energia!(destino)
    @energia -= @ciudad.distancia_a(destino)/2
  end
end
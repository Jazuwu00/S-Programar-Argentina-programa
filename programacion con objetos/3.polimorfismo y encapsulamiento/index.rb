=begin
    

Ejercicio 1: ¿Pepita está feliz?
¿Te acordás de Pepita? Bueno, aunque no lo creas, también cambia de estados de ánimo. En nuestro modelo de Pepita, vamos a representar simplemente dos estados posibles: cuando está débil y cuando está feliz.

¿Y cuándo ocurre eso?

Pepita está débil si su energía es menor que 100.
Pepita está feliz si su energía es mayor que 1000.
Completá los métodos debil? y feliz? de Pepita.

Como en esta lección no vamos a interactuar con las ciudades, hemos quitado todo lo relacionado a ellas de Pepita. Esto solo lo hacemos para que te sea más fácil escribir el código, no lo intentes en casa.

    
=end

module Pepita
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.debil?
      @energia < 100
    end
    
    def self.feliz?
      @energia >1000
    end
end



=begin
    
 Ejercicio 2: Reencuentro alternativo
Si llegaste hasta acá, ya deberías saber que en programación existe una herramienta llamada alternativa condicional.

En Ruby, como en muchos otros lenguajes, esto se escribe con la palabra reservada if. Por ejemplo:

module Jose
  def self.acomodar_habitacion!
    self.ordenar!
    if self.tiene_sabanas_sucias?
      self.cambiar_sabanas!
    end
    self.tender_la_cama!
  end
end
Sabiendo cómo se escribe la alternativa condicional en Ruby queremos que Pepita, además de recibir órdenes, tenga sus momentos para poder hacer lo que quiera.

Obviamente, qué quiere hacer en un momento dado depende de su estado de ánimo:

Si está débil, come diez gramos de alpiste, para recuperarse.
Si no lo está, no hace nada.
Hacé que Pepita entienda el mensaje hacer_lo_que_quiera! que se comporte como explicamos.
=end

module Pepita
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.debil?
      @energia < 100
    end
    
    def self.feliz?
      @energia >1000
    end
    
    def self.hacer_lo_que_quiera!
      if self.debil? 
        self.comer_alpiste! 10
      end
    end
  end
  

=begin
    
  Ejercicio 3: Repitamos qué pasa si no
Hay veces que con un if alcanza, pero otras queremos hacer algo si no se cumple una condición. Como ya te podrás imaginar, donde hay un if ¡cerca anda un else!

module Jardinero
  def self.cuidar!(planta)
    if planta.necesita_agua?
      3.times { self.regar! planta }
    else
      self.sacar_bichos! planta
    end
  end
end
¿Y ese times qué es?

Es un mensaje que entienden los números que sirve para ejecutar una porción de código varias veces. En este caso regaríamos 3 veces la planta recibida como argumento.

Ahora que conocimos la existencia de times y vimos cómo hacer else...

Modificá la solución para que si Pepita no está débil vuele en círculos 3 veces.
    
=end

module Pepita
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.debil?
      @energia < 100
    end
    
    def self.feliz?
      @energia >1000
    end
    
    def self.hacer_lo_que_quiera!
      if self.debil? 
        self.comer_alpiste! 10
      else
        3.times {self.volar_en_circulos!}
      end
    end
  end
  

=begin 

Ejercicio 4: Voy a hacer, pero como yo quiero
  Algunas veces vamos a tener condiciones anidadas. En otras palabras, un if dentro de un if o un else. Como en este ejemplo:
  
  module Docente
    def self.nota_conceptual(nota)
      if nota > 8
        "Sobresaliente"
      else
        if nota > 6
          "Satisfactoria"
        else
          "No satisfactoria"
        end
      end
    end
  end
  Ahora que vimos estas condiciones anidadas que poco tienen que ver con el nido de Pepita , vamos a conocer el comportamiento definitivo de Pepita cuando hace lo que quiere:
  
  Si está débil, come diez gramos de alpiste, para recuperarse.
  Si no está debil pero sí feliz, vuela en círculos cinco veces.
  Si no está feliz ni débil, vuela en círculos 3 veces.
  Modificá a Pepita para que el método hacer_lo_que_quiera! se comporte como mencionamos más arriba.
=end

module Pepita
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
  
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.debil?
      @energia < 100
    end
  
    def self.feliz?
      @energia >1000
    end
  
    def self.hacer_lo_que_quiera!
      if self.debil? 
        self.comer_alpiste! 10
      else
        if self.feliz?
          5.times {self.volar_en_circulos!}
        else 
          3.times {self.volar_en_circulos!}
        end
      end
    end
  end
  
=begin   
 Ejercicio 5: Llegó Pepo
Pepo es un gorrión que también sabe comer, volar y hacer lo que quiera, pero lo hace de manera diferente a Pepita.

comer alpiste: el aparato digestivo de Pepo no anda muy bien, por eso solo puede aprovechar la mitad del alpiste que come. Por ejemplo, si come 20 gramos de alpiste, su energía solo aumenta en 10.
volar en círculos: gasta 15 unidades de energía si está pesado y 5 si no lo está. Decimos que está pesado si su energía es mayor a 1100.
hacer lo que quiera: como siempre tiene hambre, aprovecha y come 120 gramos de alpiste.
Ah, y al igual que Pepita, su energía comienza en 1000.
=end 
  

  module Pepo
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      if self.energia >1100
        @energia -= 15
      else 
        @energia -= 5
      end
    end
  
    def self.comer_alpiste!(gramos)
      @energia += gramos /2
    end  
  
  
    def self.hacer_lo_que_quiera!
  
      self.comer_alpiste! 120
  
    end
  end
  

=begin
Ejercicio 6: ¡A entrenar!
Nuestras aves quieren presentarse a las próximas Olimpíadas, y para eso necesitan ejercitar un poco.

Para ayudarnos en esta tarea conseguimos a Pachorra, un ex entrenador de fútbol que ahora se dedica a trabajar con aves. Él diseñó una rutina especial que consiste en lo siguiente:

Volar en círculos 10 veces.
Comer un puñado de 30 gramos de alpiste.
Volar en círculos 5 veces.
Como premio, que el ave haga lo que quiera.
Creá a Pachorra, el entrenador de aves, y hacé que cuando reciba el mensaje entrenar_ave! haga que Pepita realice su rutina (si, solo puede entrar a Pepita , pero lo solucionaremos pronto).

Para que no moleste, movimos el código de Pepita a la Biblioteca.

=end


module Pachorra
    @energia = 1000
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
  
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.entrenar_ave!
      10.times {Pepita.volar_en_circulos!}
      Pepita.comer_alpiste!(30)
      5.times {Pepita.volar_en_circulos!}
      Pepita.hacer_lo_que_quiera!
    end
  
  end


=begin
    Ejercicio 7: Pachorra todoterreno
Como imaginabas, Pachorra puede entrenar cualquier tipo de aves, aunque para que no haya problemas, solo entrena de a una a la vez.

Antes de empezar a entrenar, debe firmar un contrato con el ave. Esto, por ejemplo, lo haríamos de la siguiente manera:

Pachorra.firmar_contrato! Pepita # ahora el ave de Pachorra es Pepita
Cada vez que firmamos un contrato cambiamos el ave que entrenará Pachorra, por lo cual es necesario recordar cuál es ya que a ella le enviaremos mensajes:

Pachorra.entrenar_ave! # acá entrena a Pepita
Pachorra.firmar_contrato! Pepo # ahora el ave de Pachorra es Pepo
Pachorra.entrenar_ave! # ahora entrena a Pepo
Agregale a Pachorra el método firmar_contrato!(ave), de forma tal que cuando le enviemos el mensaje entrenar_ave! haga entrenar al último ave con el que haya firmado contrato. 
=end

module Pachorra
    @energia = 1000
    @ave
  
    def self.energia
      @energia 
    end
  
    def self.volar_en_circulos!
      @energia -= 10
    end
  
    def self.comer_alpiste!(gramos)
      @energia += gramos * 15
    end  
  
    def self.entrenar_ave!
      10.times {@ave.volar_en_circulos!}
      @ave.comer_alpiste!(30)
      5.times {@ave.volar_en_circulos!}
      @ave.hacer_lo_que_quiera!
    end
    def self.firmar_contrato!(ave)
      @ave = ave
    end 
  end


=begin
    
¿Te acordás de Norita, la amiga de Pepita? Resulta que ella también quiere empezar a entrenar, y su código es el siguiente:

module Norita
  @energia = 500

  def self.volar_en_circulos!
    @energia -= 30
  end

  def self.comer_alpiste!(gramos)
    @energia -= gramos
  end  
end
Pero, ¿podrá entrenar con Pachorra?

Probalo en la consola, enviando los siguientes mensajes:

> Pachorra.firmar_contrato! Norita
> Pachorra.entrenar_ave!
    
=end



=begin   
Ejercicio 9: Un entrenamiento más duro
Analicemos el error:

> Pachorra.entrenar_ave!
undefined method `hacer_lo_que_quiera!' for Norita:Module (NoMethodError)
En criollo, lo que dice ahí es que Norita no entiende el mensaje hacer_lo_que_quiera!, y por eso Pachorra no la puede entrenar; este mensaje forma parte de su rutina.

Miremos ahora el método entrenar_ave! de Emilce, una entrenadora un poco más estricta:

module Emilce
  def self.entrenar_ave!
    53.times { @ave.volar_en_circulos! }
    @ave.comer_alpiste! 8
  end
end
¿Podrá Norita entrenar con Emilce? ¿Y Pepita? ¿Y Pepo?

Probalo en la consola y completá el código con true (verdadero) o false (falso) según corresponda para cada ave.

norita_puede_entrenar_con_pachorra =  false
norita_puede_entrenar_con_emilce =  true 
pepita_puede_entrenar_con_pachorra = true 
pepita_puede_entrenar_con_emilce = true

pepo_puede_entrenar_con_pachorra = true 
pepo_puede_entrenar_con_emilce = true


=end



=begin  

Ejercicio 10: ¿¿Polimor-qué??
¿Qué pasa si dos objetos, como Pepita, Norita o Pepo son capaces de responder a un mismo mensaje? Podemos intercambiar un objeto por otro sin notar la diferencia, como experimentaste recién.

Este concepto es fundamental en objetos, y lo conocemos como polimorfismo. Decimos entonces que dos objetos son polimórficos cuando pueden responder a un mismo conjunto de mensajes y hay un tercer objeto que los usa indistintamente. Dicho de otra forma, dos objetos son polimórficos para un tercer objeto cuando este puede enviarles los mismos mensajes, sin importar cómo respondan o qué otros mensajes entiendan.

En nuestro caso:

Pepita, Norita y Pepo son polimórficas para Emilce.
Pepita, Norita y Pepo no son polimórficas para Pachorra.
Pepita y Pepo son polimórficas para Pachorra.

=end

=begin    
Ejercicio 11: Forzando el polimorfismo
Bueno, ya entendimos que para el caso de Pachorra, Norita no es polimórfica con las otras aves, pero... ¿podremos hacer algo al respecto?

¡Claro que sí! Podemos agregarle los mensajes que le faltan, en este caso hacer_lo_que_quiera!.

¿Y qué hace Norita cuando le decimos que haga lo que quiera? Nada.

Modificá a Norita para que pueda entrenar con Pachorra.

=end

module Norita
  @energia = 500

  def self.energia
    @energia
  end

  def self.volar_en_circulos!
    @energia -= 30
  end
  
  def self.comer_alpiste!(gramos)
    @energia -= gramos
  end  
  def self.hacer_lo_que_quiera!
  end
end


=begin 

Ejercicio 12: Empieza el set
En los ejercicios anteriores, le habíamos incluido a Pachorra y Emilce un mensaje firmar_contrato!(ave) que modificaba su estado, es decir, alguno de sus atributos. A estos mensajes que solo modifican un atributo los conocemos con el nombre de setters, porque vienen del inglés set que significa establecer, ajustar, fijar.

Para estos casos, solemos utilizar una convención que se asemeja a la forma que se modifican los atributos desde el propio objeto, pudiendo ejecutar el siguiente código desde una consola:

Emilce.ave = Pepita
Esto se logra definiendo el método ave=, todo junto, como se ve a continuación:

module Emilce
  def self.ave=(ave_nueva)
    @ave = ave_nueva
  end

  def self.entrenar_ave!
    53.times { @ave.volar_en_circulos! }
    @ave.comer_alpiste!(8)
  end
end
¿Te animás a cambiar el código de Pachorra para que siga esta convención?

=end

module Pachorra
  
  def self.ave=(ave_nueva)
    @ave = ave_nueva
  end
 
  def self.entrenar_ave!
    10.times { @ave.volar_en_circulos! }
    @ave.comer_alpiste! 30
    5.times { @ave.volar_en_circulos! }
    @ave.hacer_lo_que_quiera!
  end
end


=begin
  Ejercicio 13: El encapsulamiento
Ya aprendiste cómo crear getters y setters para un atributo, pero ¿siempre vamos a querer ambos?

La respuesta es que no, y a medida que desarrolles más programas y dominios diferentes tendrás que construir tu propio criterio para decidir cuándo sí y cuándo no.

Por ejemplo, ¿qué pasaría si a Pepita le agregaramos un setter para la ciudad? Podríamos cambiarla en cualquier momento de nuestro programa ¡y no perdería energía! Eso va claramente en contra de las reglas de nuestro dominio, y no queremos que nuestro programa lo permita.

Te dejamos en la Biblioteca el código que modela a Manuelita, una tortuga viajera. Algunos de sus atributos pueden ser leidos, otros modificados y otros ambas cosas.

Completá las listas de atributos_con_getter y atributos_con_setter mirando en la definicion de Manuelita qué tiene programado como setter y que como getter


atributos = %w(
energia
ciudad
mineral_preferido
donde_va
)

atributos_con_getter = %w(
energia
mineral_preferido
ciudad
)

atributos_con_setter = %w(
mineral_preferido
donde_va

)

=end



=begin   

Ejercicio 14: Vamos terminando
Vamos a empezar a repasar todo lo que aprendiste en esta lección, te vamos a pedir que modeles a nuestro amigo Inodoro, un gaucho solitario de la pampa argentina. Fiel al estereotipo, Inodoro se la pasa tomando mate, y siempre lo hace con algún compinche; ya sea Eulogia, su compañera o Mendieta, su perro parlante.

Tu tarea será completar el código que te ofrecemos, definiendo los métodos incompletos y agregando los getters y setters necesarios para que sea posible:

Consultar cuánta cafeína en sangre tiene Inodoro.
Consultar al compinche de Inodoro.
Modificar al compinche de Inodoro.
Consultar si Eulogia está enojada.
Consultar cuántas ganas de hablar tiene Mendieta.
Modificar las ganas de hablar de Mendieta.

=end

module Inodoro
  @cafeina_en_sangre = 90
  @compinche 
  def self.cafeina_en_sangre
    @cafeina_en_sangre
  end
  def self.compinche
    @compinche 
  end
  def self.compinche=(comp)
    @compinche = comp
  end
end

module Eulogia
  @enojada = false
  def self.enojada? 
    @enojada
  end
end

module Mendieta
  @ganas_de_hablar = 5
  def self.ganas_de_hablar
    @ganas_de_hablar 
  end
  def self.ganas_de_hablar=(num)
    @ganas_de_hablar = num
  end
end


=begin
  
Ejercicio 15: ¡Se va la que falta!
Para finalizar el repaso vamos a modelar el comportamiento necesario para que Inodoro pueda tomar mate con cualquiera de sus compinches... ¡Polimórficamente!

Cuando Inodoro toma mate aumenta en 10 su cafeína en sangre y su compinche recibe un mate.
Al recibir un mate, Eulogia se enoja porque Inodoro siempre le da mates fríos.
Por su parte, Mendieta se descompone cuando recibe un mate, porque bueno... es un perro. Esto provoca que no tenga nada de ganas de hablar (o en otras palabras, que sus ganas_de_hablar se vuelvan 0).

Definí los métodos tomar_mate!, en Inodoro, y recibir_mate! en Eulogia y Mendieta.

=end

module Inodoro
  @cafeina_en_sangre = 90
  @compinche 
  def self.cafeina_en_sangre
    @cafeina_en_sangre
  end
  def self.compinche
    @compinche 
  end
  def self.compinche=(comp)
    @compinche = comp
  end
  def self.tomar_mate!
    @cafeina_en_sangre +=10
    @compinche.recibir_mate!

  end
end

module Eulogia
  @enojada = false
  def self.enojada? 
    @enojada
  end
  def self.recibir_mate!
    @enojada = true
  end
end

module Mendieta
  @ganas_de_hablar = 5
  def self.ganas_de_hablar
    @ganas_de_hablar 
  end
  def self.ganas_de_hablar=(num)
    @ganas_de_hablar = num
  end
  def self.recibir_mate!
    @ganas_de_hablar = 0
  end
end


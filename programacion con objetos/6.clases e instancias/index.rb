=begin   

Ejercicio 1: Zombi caminante
¡Te damos la bienvenida a la invasión zombi!

Vamos a crear al primero de nuestros zombis: Bouba. Bouba no sabe correr, porque es un simple caminante , y cuando le pedimos que grite, responde "¡agrrrg!". Además sabe decirnos su salud, que inicialmente es 100, pero puede cambiar.

¿Cuándo cambia? Al recibir_danio!: cuando lo atacan con ciertos puntos de daño, su salud disminuye el doble de esa cantidad.

Manos a la obra: creá el objeto Bouba, que debe entender los mensajes sabe_correr?, gritar, salud y recibir_danio!.

¡Cuidado! La salud de Bouba no puede ser menor que cero.

=end


module Bouba 
    @salud = 100
    def self.sabe_correr?
      false
      end
    def self.gritar
      "¡agrrrg!"
      end
    def self.salud
      @salud
      end
    def self.recibir_danio! (danio)
    @salud =  [@salud-danio * 2,0].max
      end
    
  end


=begin   

Ejercicio 2: Atacando un zombi
Te presentamos a la primera de las sobrevivientes de la invasión, Juliana . Por ahora su comportamiento es simple: sabe atacar! a un zombi con cierta cantidad de puntos de daño. Y al hacerlo, el zombi recibe daño.

Además cuenta con un nivel de energia, que inicia en 1000, pero todavía no haremos nada con él. Definí un método getter para este atributo.

Veamos si se entiende: definí el objeto Juliana que pueda atacar! a un zombi haciéndolo recibir_danio!, e inicializá su energía en 1000.

=end


module Juliana
    @energia = 1000
    def self.energia
      @energia
    end
    def self.atacar! ( zombie,puntos)
      zombie.recibir_danio! (puntos)
    end
  end


=begin   

Ejercicio 3: Otro zombi caminante
¡Bouba no está solo! Resulta que tiene un amigo, Kiki. Podríamos decir que los dos son tal para cual: ¡el comportamiento de ambos es exactamente el mismo! Es decir, no sabe_correr?, grita "¡agrrrg!", recibe daño de la misma forma...

Definí otro objeto, Kiki, que se comporte de la misma forma que Bouba. ¡Te dejamos a Bouba para que lo uses como inspiración!


=end

module Bouba 
    @salud = 100
    def self.sabe_correr?
      false
      end
    def self.gritar
      "¡agrrrg!"
      end
    def self.salud
      @salud
      end
    def self.recibir_danio! (danio)
    @salud =  [@salud-danio * 2,0].max
      end
    
  end
  
  
  
  module Kiki
    
    @salud = 100
    def self.sabe_correr?
      false
      end
    def self.gritar
      "¡agrrrg!"
      end
    def self.salud
      @salud
      end
    def self.recibir_danio! (danio)
    @salud =  [@salud-danio * 2,0].max
      end
    
  end


=begin 

Ejercicio 4: ¡¿Vivos?!
¿Acaso Bouba y Kiki pensaron que eran invencibles? Cuando su salud llega a 0, su vida termina... nuevamente. ¡Son zombis, después de todo!

Definí el método sin_vida? que nos dice si la salud de Bouba o Kiki es cero.

=end

def self.sin_vida?
  @salud == 0
end


=begin   

Ejercicio 5: Clases
Si tenemos más de un objeto que se comporta exactamente de la misma forma, lo que podemos hacer es generalizar ese comportamiento definiendo una clase. Por ejemplo, si tenemos dos celulares con el mismo saldo y ambos tienen las mismas funcionalidades, realizar_llamada! y cargar_saldo! :

module CelularDeMaría
  @saldo = 25

  def self.realizar_llamada!
    @saldo -= 5
  end

  def self.cargar_saldo!(pesos)
    @saldo += pesos
  end
end

module CelularDeLucrecia
  @saldo = 25

  def self.realizar_llamada!
    @saldo -= 5
  end

  def self.cargar_saldo!(pesos)
    @saldo += pesos
  end
end
Podemos generalizarlos en una clase Celular:

class Celular
  def initialize
    @saldo = 25
  end

  def realizar_llamada!
    @saldo -= 5
  end

  def cargar_saldo!(pesos)
    @saldo += pesos
  end
end
Veamos si se entiende: como Bouba y Kiki se comportan exactamente de la misma forma, generalizalos definiendo una clase Zombi que entienda los mismos cinco mensajes que ellos. Podés ver las definiciones de ambos zombis en la solapa Biblioteca.

=end

class Zombi
  def initialize
    @salud = 100
    def self.sabe_correr?
      false
    end
    def self.gritar
      "¡agrrrg!"
    end
    def self.salud
      @salud
    end
    def self.recibir_danio! (danio)
      @salud =  [@salud-danio * 2,0].max
    end
    def self.sin_vida?
      @salud == 0
    end 
  end
end

=begin   

Ejercicio 6: Instancias
Como habrás visto, definir una clase es muy similar a definir un objeto. Tiene métodos, atributos... ¿cuál es su particularidad, entonces? La clase es un objeto que nos sirve como molde para crear nuevos objetos.

Momento, ¿cómo es eso? ¿Una clase puede crear nuevos objetos?

¡Así es! Aprovechemos la clase Celular para instanciar los celulares de María y Lucrecia:

celular_de_maría = Celular.new
celular_de_lucrecia = Celular.new
Celular, al igual que todas las clases, entiende el mensaje new, que crea una nueva instancia de esa clase.

¡Ahora te toca a vos! Definí bouba y kiki como instancias de la clase Zombi.

=end

bouba = Zombi.new 
kiki = Zombi.new

=begin   

Ejercicio 7: Al menos tenemos salud
Quizá hayas notado que nuestra clase Zombi tiene, al igual que tuvieron los objetos Bouba y Kiki en su momento, un atributo @salud. Seguramente tu Zombi se ve similar a este:

class Zombi

  def initialize
    @salud = 100
  end

  def salud
    @salud
  end

  #...y otros métodos

end
Pero ahora que @salud aparece en la clase Zombi, ¿eso significa que comparten el atributo? Si Juliana ataca a bouba, ¿disminuirá también la salud de kiki?


=end  



=begin   

Ejercicio 8: Inicializando instancias
Como viste recién, la salud no se comparte entre bouba y kiki a pesar de que ambos sean instancias de Zombi.

Pero nos quedó un método misterioso por aclarar: initialize. Al trabajar con clases tenemos que inicializar los atributos en algún lugar. ¡Para eso es que existe ese método!

El mensaje initialize nos permite especificar cómo queremos que se inicialice la instancia de una clase. ¡Es así de fácil!

¡anastasia llega para combatir los zombis! Definí una clase Sobreviviente que sepa atacar! zombis e inicialice la energia en 1000. En la solapa Biblioteca podés ver el código de la Juliana original.

Luego, definí juliana y anastasia como instancias de la nueva clase Sobreviviente.


=end 


class Sobreviviente
  def initialize 
    @energia = 1000
    def self.energia
      @energia
    end
    def self.atacar! ( zombie,puntos)
      zombie.recibir_danio! (puntos)
    end
  end
end

juliana = Sobreviviente.new
anastasia = Sobreviviente.new


=begin   

Ejercicio 9: Ahora sí: invasión
Prometimos una invasión zombi pero sólo tenemos dos . Ahora que contamos con un molde para crearlos fácilmente, la clase Zombi, podemos hacer zombis de a montones.

¿Eso significa que tenés que pensar un nombre para referenciar a cada uno? ¡No! Si, por ejemplo, agregamos algunas plantas a un Vivero...

Vivero.agregar_planta! Planta.new
Vivero.agregar_planta! Planta.new
Vivero.agregar_planta! Planta.new
...y el Vivero las guarda en una colección @plantas, luego las podemos regar a todas...

def regar_todas!
  @plantas.each { |planta| planta.regar! }
end
...a pesar de que no tengamos una referencia explícita para cada planta. ¡Puede ocurrir que no necesitemos darle un nombre a cada una!

Veamos si se entiende: Agregale veinte nuevos zombis a la colección caminantes. ¡No olvides que los números entienden el mensaje times!

Luego, agregale un método ataque_masivo! a Sobreviviente, que reciba una colección de zombis y los ataque a todos con 15 puntos de daño.


=end

class Sobreviviente
  def initialize 
    @energia = 1000
    def self.energia
      @energia
    end
    def self.atacar! ( zombi,puntos)
      zombi.recibir_danio! (puntos)
    end

    def self.ataque_masivo! (coleccion)
      coleccion.each {|zombi| atacar!(zombi , 15)}
    end
  end
end


class Zombi
  def initialize
    @salud = 100
  end

  def sabe_correr?
    false
  end
  def gritar
    "¡agrrrg!"
  end
  def salud
    @salud
  end
  def recibir_danio!(puntos)
    @salud = [(@salud - puntos*2), 0].max
  end
  def sin_vida?
    @salud == 0
  end
end


juliana = Sobreviviente.new
anastasia = Sobreviviente.new

caminantes = []
20.times { caminantes.push(Zombi.new) }


=begin   

Ejercicio 10: Al menos tenemos (menos) salud
juliana y anastasia estuvieron estudiando a los zombis y descubrieron que no todos gozan de máxima vitalidad: algunos de ellos tienen menos salud que lo que pensábamos.

¡Esto es un gran inconveniente! En nuestra clase Zombi, todos se inicializan con @salud = 100. ¿Cómo podemos hacer si necesitamos que alguno de ellos inicie con 90 de @salud? ¿Y si hay otro con 80? ¿Y si hay otro con 70? No vamos a escribir una clase nueva para cada caso, ¡estaríamos repitiendo toda la lógica de su comportamiento!

Afortunadamente el viejo y querido initialize puede recibir parámetros que especifiquen con qué valores deseamos inicializar los atributos al construir nuestros objetos. ¡Suena ideal para nuestro problema!

class Planta
  def initialize(centimetros)
    @altura = centimetros
  end

  def regar!
    @altura += 2
  end
end
Ahora podemos crear plantas cuyas alturas varíen utilizando una única clase. Internamente, los parámetros que recibe new se pasan también a initialize:

brote = Planta.new 2
arbusto = Planta.new 45
arbolito = Planta.new 110
¡Y de esa forma creamos tres plantas de 2 , 45 y 110 centímetros de @altura!

¡Ahora te toca a vos! Modificá la clase Zombi para que initialize pueda recibir la salud inicial del mismo.

=end

class Zombi
  def initialize (salud)
    @salud = salud
    def self.sabe_correr?
      false
    end
    def self.gritar
      "¡agrrrg!"
    end
    def self.salud
      @salud
    end
    def self.recibir_danio! (danio)
      @salud =  [@salud-danio * 2,0].max
    end
    def self.sin_vida?
      @salud == 0
    end 
  end
end


=begin   

Ejercicio 11: Súper zombi
Finalmente llegó el momento que más temíamos: ¡algunos zombis aprendieron a correr y hasta a recuperar salud! Y esto no es un problema para las sobrevivientes únicamente, sino para nosotros también. Ocurre que los súper zombis saben hacer las mismas cosas que los comunes, pero las hacen de forma distinta. ¡No nos alcanza con una única clase Zombi!

Un SuperZombi sabe_correr? , y en lugar del doble, recibe el triple de puntos de daño. Sin embargo, puede gritar y decirnos su salud de la misma forma que un Zombi común, y queda sin_vida? en los mismos casos: cuando su salud es 0.

Pero eso no es todo, porque también pueden regenerarse!. Al hacerlo, su salud vuelve a 100.

¡A correr! Definí la clase SuperZombi aplicando las modificaciones necesarias a la clase Zombi.

=end


class SuperZombi
  def initialize (salud)
    @salud = salud
    def self.sabe_correr?
      true
    end
    def self.gritar
      "¡agrrrg!"
    end
    def self.salud
      @salud
    end
    def self.recibir_danio! (danio)
      @salud =  [@salud-danio * 3,0].max
    end
    def self.sin_vida?
      @salud == 0
    end 
    
    def self.regenerarse!
      @salud = 100
    end
  end
end

=begin   

Ejercicio 12: Ejercitando
¡Defenderse de la invasión no es para cualquiera! Las sobrevivientes descubrieron que cada vez que realizan un ataque_masivo! su energía disminuye a la mitad.

Pero también pueden beber! bebidas energéticas para recuperar las fuerzas: cada vez que beben, su energia aumenta un 25%.

Modificá la clase Sobreviviente para que pueda disminuirse y recuperarse su energia.

=end

class Sobreviviente
  def initialize
    @energia = 1000
  end

  def energia
    @energia
  end

  def atacar!(zombie, danio)
    zombie.recibir_danio!(danio)
  end

  def ataque_masivo!(zombis)
    zombis.each { |zombi| atacar!(zombi, 15) }
    @energia=(@energia/2)
  end
  def beber!
    @energia=@energia*1.25
  end

end



=begin
  
Ejercicio 13: Aliados
¡Nadie lo esperaba, pero igualmente llegó! Un Aliado se comporta parecido a una Sobreviviente, pero su ataque_masivo! es más violento: brinda 20 puntos de daño en lugar de 15.

Por otro lado, su energia inicial es de solamente 500 puntos, y disminuye un 5% al atacar!. Y además, beber! les provee menos energía: solo aumenta un 10%.

Nuevamente, Sobreviviente y Aliado tienen comportamiento similar pero no idéntico: no podemos unificarlo en una única clase. ¡Incluso hay porciones de lógica que se repiten y otras que no en un mismo método! Por ejemplo, en ataque_masivo!, los puntos de daño varían, pero el agotamiento es el mismo para ambas clases.

Definí la clase Aliado. Podés ver a Sobreviviente en la solapa Biblioteca.

=end

class Aliado
  def initialize
    @energia = 500
  end

  def energia
    @energia
  end

  def atacar!(zombie, danio)
    zombie.recibir_danio!(danio)
  @energia-=@energia*0.05
  end

    def ataque_masivo!(zombis)
    zombis.each { |zombi| atacar!(zombi, 20) }
  
@energia= @energia /2
    end
  def beber!
   @energia+=@energia*0.1
  0end

end

#====================================Create a string
example = "Hey there, I'm string"# los string deben estar entre comillas
puts example
space = " "
p space # el espacio es considerado un caracter
p space.length
p space.class
#tambien se puede crear string con new
name = String.new("Anndony Quemag")
p name
#===================================Multiline String
#para empezar se debe utilizar el simbolo de menor dos veces y segida una palabra (MLS), DESPUES LAS PALABRAS QUE QUERE ESCRIBIR SIN LA NECESIDAD DE comillas
#la mapalabra (MLS)debe estar seguida de los dobles simbolos menor sin espacio
puts
words = <<MLS
My name is Anndony Quemag
This is a test of Multiline string
MLS

print words
puts words
#==================================Escape character
#se puede utilizar comillas dobles y comillas simples para representar un string y se pudeen convinar si es necesario
puts "Hello, 'Anndony' how are you?"
puts 'Hello, "Anndony" how are you?'
#se puede utilizar barra invertida (\) antes de las comillas para que ruby ignore o tome estas como un caracter comillas
puts "Hello, \"Anndony\" how are you?"
puts 'Hello, \'Anndony\' how are you?'
#para realizar un salto de linea sin tener que usar otro puts se puede utilizar (\n) "ESTO NO FUNCIONA EN COMILLAS SENCILLAS ('')"
puts "Hello, \"Anndony\" \nhow are you?"
#esto solo se puede usar con el metodo puts ya que si lo utilizamos con p que es un metodo mas cientifico y tecnico nos mostrara todo como una cadena
p "Hello, \"Anndony\" \nhow are you?"
#para realizar un salto como tab se puede utilizar (\t) "ESTO NO FUNCIONA EN COMILLAS SENCILLAS ('')"
puts "Hello, \"Anndony\" \thow are you?"

puts
#====================================Single vs double Quoted Quotes
#Cuando se utiliza comillas sencillas no funciona la interpolacion
name= "Anndony Quemag"
puts '#{name}'#imprime exactamente lo que se encuentra dentro de las comillas sencillas
puts "#{name}"#imprime el contenido de la variable
puts
#======================================Equality and inequality operations with string
#para comparar string se utiliza (=) y para diferenciar (!=)
a="hello"
b="Hello"
c="hello"

p a == b
p a == c
#Tambien se puede comparar si es mayor o menor (>, <)
p "hello" < "help"
p "Hello" < "banana"
#se debe tener cuidado con las mayusculas y minusculas
p "A" < "a"
p "Z" < "a"
puts
p "Hello" < "banana"
p "Hello" < "Banana"
# tambien se puede comparar boleanos
p true == false
p true == true
#==============================================Concatenate strings
first_name="Anndony "
last_name="Quemag "
p first_name + last_name
#aparece sin espaci podemos agregar espacio al final de la cadena, aqui algunas formas de concatener cadenas
#first_name+=last_name
#p first_name

#first_name = first_name.concat(last_name)
#p first_name << last_name << "wizard"
first_name.prepend(last_name)#Invierte el orden de impresion
p first_name
puts
#===============================================the length and size methods
#El metodo length y el metodo size realizan la misma funcion,por lo cual no importa cual se toma
a = "Hello world"
b = " My name is Anndony"
c = " "
d = ""
p a.length
p b.length
p c.length
p d.length
puts
p a.size
p b.size
p c.size
p d.size
puts
#===============================================Extract single characters from String
story= "Once upon a time in a land far, far away"

p story.length
#se puede extraer una letra de la cadena (story) utilizando la posicion en la que se encuentra
p story[3]
#Si se utiliza numeros negativos se puede obtener el ultimo caracter con (-1), el penultimo con (-2), y asi sucesivamente

p story[-1]
p story[-40]#si la posicion no existe nos retorna un valor nulo (nil)
#si queremos extraer un caracter por la posicion del indice utilizamos el metodo (slice())
p story.slice(3)
p story[-4]
p story.slice(-4)
#=============================================Extract multiple characters from String
story= "Once upon a time in a land far, far away"
#para extraer un grupo de caracteres, se utiliza la convinacion de la posicion inicial mas el numero de caracteres que necesitamos

p story[5, 4]
p story.slice(0, 4)
p story[0, story.length]
puts
#=============================================Extract multiple characters with range object
story= "Once upon a time in a land far, far away..."
#para extraer un grupo de caracteres entre dos posiciones se utiliza con doble punto (12..23), sin incluir la ultima posicion
p story[27..39]
p story.slice(27..39)
#si usamos tres puntos (12...27), no toma las ultimas dos posiciones
p story[27...39]
p story.slice(27...39)

p story[27...100]#si escribimos que vaya hasta una posicion que no existe ruby corta la cadena hasta donde existen caracteres y solo muestra eso
p story[27...-7]
puts
#=============================================Overwrite characters in strings
thing ="This is a test Overwrite"
p thing
#para reemplazar una letra de un string basta con señalarle la posicion
thing[0]="p"
p thing

thing[1]="a"
p thing

thing[9]=" "
p thing
#tambien se puede reemplazar un grupo de caracteres asi
thing[2, 4]="exam" #desde la posicion dos, cuatro carat siguientes reemplacelos por ...
p thing
thing[2..5]="exam" #desde la posicion dos hasta la posicion cinco reempla con
p thing
thing[2..5]="test example" #desde la posicion dos hasta la posicion cinco reempla con
p thing
puts
#====================================================Case methods
#para imprimir la primera letra de un parrafo u oracion en mayuscula se utiliza en metodo capitalize
puts "hello word".capitalize
#para poner todo en mayusculas se utiliza upcase y para poner todo en minusculas dowcase
puts "HELLO WORD".downcase
puts "Hello word".upcase
#para intercambiar mayusculas y minusculas utilizamos swapcase
puts "HelLo WoRd".swapcase
puts
#======================================================reverse method on a String
#para Inprimir una cadena invertida se utiliza el metodo inverse
puts "Ruby".reverse
#se puede imprimir cadenas con varios metodos juntos asi
puts "Ruby is fun".upcase.reverse
puts
#======================================================Bang methods on String
#si queremos modificar una variable que contiene una cadena podemos utilizar el simbolo de exclamacion (!) la cual realiza una operacion y almacena o sobreescribe en el objeto
word = "hello word"

p word
p word.capitalize #cambia la primera letra a mayuscula pero es solo temporal la variable sigue siendo igual

#word = word.capitalize # asignanacion a la variable word de el contenido de la misma modificada con capitalize

#p word
#para realizar esto de forma mas sencilla
word.capitalize!
p word
#de igual forma se puede realizar con otros metodos como upcase, downcase, reverse,swapcase
word.downcase!
p word
word.upcase!
p word
puts
#======================================================The include?
#para encontrar un cadena en otra cadena se puede utilizar el metodo include?("Lo que se busca")
word="Hello world"
p word.include?("wor")
p word.include?("h")#sin importar cuantas veces encuentre el caracter o palabra va a retornar true si hay alguna coincidencia deferenciando de mayusculas y minusculas y espacios
#si queremos ignorar mayusculas de minusculas tendriamos que convertirlas
p word.downcase.include?("h")
puts
#========================================================The empty? and mil? methods on String
#para medir si una cadena esta vacía podemos utilizar empty?
puts "".empty?
puts "hello".empty?
#para saber cuando una cadema es nula usamos nil?
puts "Test nil".nil?
puts "".nil?#cuando una cadena esta vacia no esta nula
name="Anndony"
last_name=name[20, 8]
puts last_name
puts last_name.nil?

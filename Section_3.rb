#========================================================Puts Method 
puts "First test of Ruby"
puts "Hello"

puts "yo compre 5 dolares en la tienda"

puts 5
puts 3.14159

puts 4 + 3

puts "4" + "3" #el signo + Une Cadena tambien
puts
puts
#=======================================================print methods

print "Hello print"
print " World"
#imprime sin saltos de linea
puts
#=======================================================p methods


#la letra p muestra lo mismo que puts aumentando las comillas como para mencionar una frase
p "Test of p"
puts "Hola, prueba de puts
salto linea"

p "Hola, prueba de p
salto linea"
puts
puts
#=======================================Basic Arithmetic

p 1 + 4
p 10 - 6
p 3 * 4
p 2 / 2
p 2 % 2
p 12 / 5
p 12.0 / 5 #con punto se realiza división decimal

p 2 * 2 * 2 * 2
p 2 ** 4 #para realizar potencia se utiliza doble (**)
puts
#==========================================Coments

=begin
  puts "Prueba de comentarios"
  puts "Prueba 2 comentarios"
=end

#========================================Variables
name = "Anndony"
last_name = "Quemag"
band = true
age = 24 +1
puts name
puts name + " " +last_name # cadenas unidas
puts band
puts age
var = 30
p var
var = "Cambio a string" # se cambio el valor de numerico a string
puts var
puts

#=====================================Parallel Variables assignment
a=10
b=20
c=30
puts a,b,c
a,b,c=40,50,60
puts "En una linea"
puts a,b,c
puts "Asignando en una linea"
a,b,c=b,c,a
puts a,b,c
print "a: #{a}"," b: #{b}", " c: #{c}" # imprimir cadenas con numeros
puts

#====================================Constants
PI = 3.14159
NAME = "Anndony"

asd=90
puts "My name is #{asd}"
puts
#===================================== Object methods
#Cuenta cantidad de caracteres (.length)
p "Hello World".length
cont = "Hello World"
p cont.length
#Cambia todas las letras a matusculas (.upcase)
p "Hello World".upcase
mayu = "hello world"
p mayu.upcase
#Cambia todas las letras a minusculas (.downcase)
p "HELLO WORLD".downcase
minu = "HELLO WORLD"
p minu.downcase
#Pone el sigiente (.next)
puts 10.next

#Inspeccionar similar a p (.inspect)

puts "Hello World".inspect
puts
#=====================================string Interpolation
#convertir a string
p 5.to_s

age = 23

p "I am " + age.to_s + " years old"
p "I am #{age} years old"
p "The result od adding 1 + 1 is #{1+1}"
p "My name is #{name+" "+last_name}, I am "+ age.to_s + " years old." #imprimir cademas con numeros combirtiendo la edad a string

#=========================================In terminal
=begin
  name = gets.chomp
  Anndony
  p name

puts "Hi, what's your name?"
name = gets.chomp

puts "Great, what's your age?"
age = gets.chomp.to_i

puts "Cool, so tour name is #{name} and your are #{age} years old."
=end
puts
#============================================Section 3
#================================intro to numbers
p 5.class
p 6.class
p 0.class
p 200.class
p -123.class

p 4.31.class
p 7.4235.class
p 9.8.class

p 999999999999999999999999999999999999999999999999999999999999.class
#.class muestra el tipo de variable en este caso integer y float
puts
#===========================================Convert string to numbers

str = "5"
num = 54
float = 3.54

p str
p str.class

p str.to_i.class #conversion a integer
p str.to_f.class #conversion a float
puts

p num
p num.class

p num.to_s.class #conversion a integer
p num.to_f.class #conversion a float

puts

p float
p float.class

p float.to_i.class #conversion a integer
p float.to_s.class #conversion a string
puts
#=============================================Booleans

p 5 > 4 && 6 > 5 #retorna un valor boleano
p 4 > 5 #retorna un valor boleano

verdadero = true
falso = false
p verdadero.class
p falso.class
puts

#============================================ the odd? and even?
p 1.next
p 1.to_s

p "el numero 10 es par? "+10.even?.to_s # numero par(even)
p "el numero 11 es par? "+11.even?.to_s #numero impar(odd)

p "el numero 2.345 es par? " + 2.345.to_i.even?.to_s
puts
#============================================ comparasion with the equality
if 10 == 10
  p "Son iguales"
else
  p "Son Diferentes"
end

puts

a=10
b=10

p a == b

p "5" == 5
p "5" == "5"

p 5 == 5.0 #en este caso 5 y 5.0 son iguales
p 5 == 5.2
#============================================ comparasion with the inequality
if 11 != 10
  p "Son Diferentes"
else
  p "Son iguales"
end

p "hellow" != "HELLOW"
p "hellow" != "HELLOW".downcase

#=========================================== LESS THAT AND greater than operators
if -11 >= 10
  p "es mayor"
else
  p "es menor"
end

p 9 <= 90
#=========================================== Arithmetic_methods

p 1+2+3+4+5+3**4
p 1.next()
p (1.9+(2+4))*3
#=========escritura diferente resultado iguales
p 10 - 5
p 10.-5
p 10.-(5)
#=========
p 3 * 4
p 3. * 4
p 3. * (4)
#=========
p 8 / 2
p 8. / 2
p 8. div (2)#para la division se puede usar el simbolo / o div
#=========
p 8 % 3
p 8. % 3
p 8. modulo (3)#para el modulo se puede usar el simbolo % o modulo
puts
#============================================== object methods with parameters
p 20.between?(10, 30) #el 20 se encuentra entre(between) 10 y 30
p 20.between?(21, 28) #el 20 no se encuentra entre(between) 21 y 28
#============================================== float methods
p 10.9.to_i
p 10.9.floor #similar a to_i
p 10.1.ceil #aproxima al siguiente numero
p 10.5.round # aproxima al numero segun los decimales
p 10.51263.round(3) #Muestra numero con el numero de decima que se muestra en los parentesis aproximando el ultimo digito
p -234.abs #convierte los numero negativos a positivos

#===============================================assignment and ressignment
a = 10
p "a: #{a}"

a = a + 5 # se asigno 10 que era el valor de a mas 5 a la misma variable a
p "a: #{a} con asignacion"

 a +=5 # se asigna el valor que contenga a mas 5
 p "a: #{a} metodo corto"
 # se puede realizar la misma asignacion con todos los operadores
 a -=5
 p "a: #{a} metodo corto con resta"
 a *=2
 p "a: #{a} metodo corto con multiplicacion"
 a /=2
 p "a: #{a} metodo corto con division"
 a **=2
 p "a: #{a} metodo corto con potencia"
puts
 #===============================================Introduccion a Bloques
 10.times{puts "Anndony is awesome!"} #se puede usar de dos formas con llames o con las palabras do, end.
 #lo reomendado es utilizar do, end para bloques y las {} para una sola linea
 puts
 3.times do
   puts "Anndony is  incredible"
   puts "I'm very happy"
 end
 puts
 #para crear una varible temporal en el bloque se utiliza las barras verticales que se puede utilizar como contador
 3.times do |cont|
   puts "Anndony is  incredible"
   puts "I'm very happy"
   puts "iteration #{cont+1}"
 end
 puts
 #se puede realizar lo mismo ṕara las {}
 5.times{|i| puts "The number is: #{(i+1)*3}"}
 puts
 #=======================================the upto and downto
 5.downto(1){|i| puts "Countdown: #{i}"} # realiza una cuenta regresiva desde el numero que se indica (5) hasta el numero dentro de los parentesis (1)
#se puede realizar el mismo proceso con do, end
puts
 5.downto(1) do |cont|
   puts "Anndony is  incredible"
   puts "I'm very happy"
   puts "iteration #{cont}"
 end
 puts
 #Prueba con uptp
 5.upto(10){|i| puts "Countdown: #{i}"}# realiza una cuenta progresiva desde el numero que se indica (5) hasta el numero dentro de los parentesis (10)
 puts
  5.upto(10) do |cont|
    puts "This is a test"

    puts "iteration #{cont}"
  end
  puts
  #============================================= the step method
  0.step(100, 5){|i| puts "Iteration: : #{i}"} # es parecido a los metodos anteriores pero se puede especificar de cuanto sera el salto que haga en cada iteracion empieza en numero que ponemos (0), y va hasta el primer numero dentro de los parentesis(100, 5) el segundo numero indica el salto
  puts
  0.step(10) do |cont|#si no se pone el segundo valor de paso dentro de los parentesis se toma por defecto paso de 1
    puts "iteration #{cont}"
  end

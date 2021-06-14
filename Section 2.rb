#========================================================Metodo Puts
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
#==========================================coments

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
#=====================================Object methods
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

#=========================================in terminal
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

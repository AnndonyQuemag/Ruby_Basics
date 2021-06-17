#=========================================Intro to ranges
#un rango incluya dos posiciones (a, b) este va desde la posicion a e incluye todos los valores hasta la posicion b se representa con doble punto(..)
num = 1..50
p num.class
#si queremos excluir el valor final del rango debemos poner triple punto como lo miramos en videos pasados(...)
#nums = 1...5
#p nums.class
#si queremos imprimir el primer numero o el ultimo
p num.first
p num.last

#si queremos mostrar los numeros del rango podemos poner cuantos queremos entre parentesis(#)
p num.first(2)
#se debe tener en cuenta que para usar los rangos se deben asignar a una variable ya que si lo intentamos con un puts generara error a menos que pongamos el rango entre parentesis
#puts (1..50).first(3)
puts
#==========================================Alphabetical ranges
#los rangos Alfabeticos funcionan practicamente igual a los numericos
alphabet = "a".."z"

p alphabet.first(32)
#Ruby tiene un alfabeto que va iniciando con mayusculas (A, Z) seguido algunos simbolos y despues de esto las letras minusculas (a, z)
alphabets = "A".."z"
p alphabets.first(50)
puts
#==========================================The size method on a range
#el numero de elementos que estan contenidos en un rango se expresan con el metodo sici
numbers = 123..743
p numbers.size

p numbers.first(numbers.size)
puts
#===========================================Check if a value is in a range
#podemos verificar si el rango contiene elementos por medio del metodo include que ya se miro anteriormente
words = "a".."m"
puts words.include?("h")

number = 1...50
puts number.include?(79)
#para realizar esta comparacion se usa tambien el triple igual asi
p words === "h"
p number === 23
puts
#========================================== Generate a random number with the rand method
#el metodo rand funciona sin la necesidad de agregarlo a alguna variable y genera un numero aleatorio flotante entre 0 y 1
puts rand
#ahora si se quiere redondear el numero una cantidad de digitos se utiliza round(numero de digitos)
puts rand.round(3)
#si se quiere generar un numero aleatorio entre cero y algo debemos poner entre parentesis seguidos de rand()
puts rand(800)
#si se quiere generar un numero flotante entre cero y algo debemos multiplicar
puts rand * 300
#para generar un numero aleatorio entre dos numeros usamos doble punto
puts rand(24..50)

#si se desea consultar informacion de algun comando se puede realizarlo por medio de la terminal del sistema poniendo "ri" seguido de el comando que se dea consultar ejemplo: ri String, ejemplo 2: ri String.upcase
#==========================================================Reviw of blocks
#Los bloques se pueden generar con la palabra times seguida de dos llaves o las palabras do, end
#para generar un contador dentro del ciclo se hace al inicio con barras verticales, incia siempre en cero
3.times { |num| puts "Hello there, the number is #{num}"}
puts

5.times do |num|
  square = num * num
  puts "Hello there, the result is: #{square}"
end
puts

#=====================================================The each method
#este metodo realiza iteraciones en una matriz para recorrerla con each seguido de llaves o de do, end, al igual que el metodo anterior se genera una variable entre barras verticales que seran los elementos de la matriz

candies = ["sour patch", "Milky way", "Airheads"]

candies.each do |candy|
  puts "i love eating #{candy}"
  puts "It tasted so good"
end
puts

names = ["bo", "moe", "joe"]

names.each { |name| puts name.upcase }
puts

#funciona de igual forma para cada tipo de matriz, (string,number, ...)
number = [1, 2, 3, 4, 5, 6]

number.each do |num|
  square = num * num
  puts "The square of #{num} is #{square}"
end

#las variables que se crean dentro de cada ciclo son variables locales asiq ue si se intenta immprimir estas tendremos un error ya que la variable fuera del ciclo en realidad no existe
#puts square
puts

#====================================================More practice with the each method
#se puee utilizar metodos para las iteraciones de cada matriz
fives = [5, 10 ,15, 20, 25, 30, 35, 40]
evens = []
odds = []

fives.each do |number|
  if number.odd?
    puts number
  end
end
puts

#Recordar que con el operador ternario se puede realizar esta comparacion en menos lineas de codigo, ademas each tambien funciona con las llaves
fives.each { |number| number.even? ? evens << number : odds << number }

p evens
p odds
puts

#===============================================================each within each
#se puede anidar metodos si se desea crear una variedad de posibilidades entre dos matrices

shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
 ties.each do |tie|
   puts "OPTION: A #{shirt} shirt and a #{tie} tie"
 end
end
puts

#=============================================================the for loop
#existe otra manera de recorrer una matriz y es con el metodo for
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 15, 20, 40]

for num in numbers # la variable que se crea para recorrer el array a diferencia de el metodo anterior es una variable global
  puts num
end
puts

puts num
puts

#==============================================================the each_with_index method
#con el metodo each_with_index, podemos saber que iteracion o en que posicion del indice de la matriz se encuentra, este se debe poner dentro de las barras invertidas despues de la variable, esto se puede realizar para todo tipo de matriz (String, Number, ...)
colors = ["Red", "Blue", "Green", "Yellow"]

colors.each_with_index do |color, index|
  puts "Moving on index number #{index}"
  puts "The current color is #{color}"
end
puts

#==============================================================CHALLENGER the each_with_index method
#ejercicio 1
numbers = [1, 2, 3, 4, 5]
num = 0

numbers.each_with_index do |number, i|
  num += number * i
  puts "The operation is #{number} * #{i} = #{number * i}"

end
puts
puts "Sum is: #{num}"
puts

#ejercicio 2
arr = [-1, 2, 1, 2, 5, 7, 3]

def print_if(array)
  array.each_with_index do |number, index|
    if index > number
        puts "We have a match, the index is #{index} and the number is #{number}"
        puts "The result of multiplying the is #{index * number}"
    end
  end
end

print_if(arr)
puts

#==========================================================The map or collect method
#los metodos  map y collect son exactamente los mismos
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
squares = []
numbers.each { |number| squares << number **2 }
p squares

#usando map
#el metodo map lo que haces es asignar los valores a una matriz sin tener que crearla con anterioridad y ademas sin tener que usar un push o (<<) solo basta con escribir dentro del ciclo lo que queremos que se guarde en la matriz
arrar = numbers.map { |number| number ** 2 }
p arrar
puts

#tambien al igual que los otros metodos se puede usar do, end
temperature = [105, 32, 9, -34, 18]
celcius = temperature.map do |number|
  minus = number - 32
  minus *(5.0/9.0)
end
p celcius
puts
#se puede realizar operaciones directas

results = [1, 2, 3].map { |e| e ** 2  }
p results
puts

#ejercicio
def cubes(arr)
  arr.map { |number| number ** 3 }
end

p cubes([3, 4, 5, 6, 7, 8])
puts

#====================================================iteration over Array with while or until loops
#una forma de recorrer la matriz es unsando ciclos o bucles como while o until recorriendo la posicion del indice
animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

i = 0
while i < animals.length

  puts animals[i]
  i += 1
end
puts

#Usando until
i = 0
until i > animals.length

  puts animals[i]
  i += 1
end
puts

#======================================================The break keyword
#se puede detener un ciclo con break

prizes = ["Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite", "Pyrite"]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == "Gold"
    puts "Yay! Found gold!"
    break
  else
    puts "#{current} is not Gold"
  end
  i += 1
end
puts

#Se puede terminar todos los ciclos con break
prizes.each do |num|
  if num == "Gold"
    puts "Yay! Found gold!"
    break
  else
    puts "#{num} is not Gold"
  end
end
puts

#======================================================the next keyword
#el emtodo next se utiliza siempre que se requiere saltar al siguiente elemento de la matriz
numbers = [1, 2, 3, "hello", 5, 6, 7, 8, []]
numbers.each do |num|
  unless num.is_a?(Integer)
    next
  else
    puts "The square of #{num} is #{num ** 2}"
  end
end
puts

#====================================================The reverse method on an Array
#el metodo reverse que se miro anteriormente tambien funciona en array y lo que hace es invertir los valores del Array

numbers = [1, 2, 3, 4, 5]

p numbers.reverse

p numbers
#en este caso el metodo solo funciona para mostrar si se quiere cambiar la matriz original se debe aumentar el signo de exclamacion al final del metodo
numbers.reverse!
p numbers
puts

#====================================================the sort method on an Array
#Este metodo sirve para ordenar una matriz, si la matriz es de numeros esta se ordenara de forma ascendente, y si es string se ordenara alfabeticamente

numbers = [5, 6, 13, -2, 8, -1]
words = ["Hello", "World", "apple", "zebra", "lemon"]

p numbers.sort
p words.sort #se debe tener en cuenta que al ordenar un string se ordena alfabeticamente y empezando por mayusculas
p numbers
puts

#al igual que el metodo anterior si quremos modificar la matriz original se utiliza el signo de admiracion
numbers.sort!
p numbers
puts

#======================================================The concat method on an array
#concatenar dos matrices es facil solo con el signo + o la palabra concat

p [1, 2, 3] + [4, 5]
nums = [1, 2, 3].concat([4, 5, 6])

p nums
puts

################
a = [1, 2, 3]
b = [4, 5, 6]

def custom_concat(arr1, arr2)
  arr2.each { |elem| arr1 << elem }
  arr1
end

p custom_concat(a, b)
puts

#========================================================the max and min methods on an Array
#estos metodos sirven para mostrar el valor maximo y el minimo de una matriz

c = [1, 2, 3, 4, 5, 6, 89, 1, 2, 6, 23]

p c.max
p c.min

#Tambien funcionan para una matriz de String
d = ["apple", "kiwi", "banana", "watermelon"]

p d.max
p d.min
puts

#######################

def custom_max(arr)
  arr.sort[-1]#ordena el array y retorna el ultimo valor de la matriz
end

def custom_min(arr)
  arr.sort[0]
end

p custom_max([1, 6, 8, 5, 3, 1])
p custom_min([1, 6, 8, 5, 3, 1])
puts

#otra forma de obtener el mayor

def custom_max1(arr)
  return nil if arr.empty?
  max = arr[0]
  arr.each do |value|
    max = value if value > max
  end
  max
end

def custom_min(arr)
  return nil if arr.empty?
  min = arr[0]
  arr.each do |value|
    min = value if value < max
  end
  min
end

p custom_max1([1, 6, 8, 5, 3, 1])
puts
#=====================================================The include? method on an Array
#el metodo include en este caso para matrices busca si el valor que inresamos se encuentra en alguna m+posicion de la matriz

fruits = ["Apple", "Banana", "Kiwi", "melon"]

p fruits.include?("Apple")

#=========================================================The index and find index methods on an Array
#los dos metodos son exactamente los mismos los cuales devuelven el indice o posicion del elemento buscado

colors = ["Red", "Green", "Blue", "Red"]

p colors.find_index("Green")
p colors.index("Red") #se debe tener en cuenta que si el valor esta repetido nos retornara la primera posicion donde lo encuentre
puts

#=====================================================The select method
#este metodo selecciona los valores segun un creterio o una condicion
grades = [80, 95, 13, 76, 28, 39]

matches = grades.select do |number|
  #number >= 75
  number.even?
end

p matches
puts

#======================================================the reject method
#este metodo devuelve una nueva matriz que rechaza todos los elementos de un bloque que se evaluara, que es lo contrario a select

animals = ["cheetah", "cat", "Lion", "elephant", "dog", "cow"]

select_results = animals.select { |animal| animal.include?("c")}
reject_results = animals.reject { |animal| animal.include?("c")}

p select_results
p reject_results
puts

#====================================================Unpack a multidimensional Array
#en este caso se tiene un amatriz multidimensional que cada posicion o indice es una matriz nueva
user = [["Bob", 25, "Male"], ["Susan", 48, "Female"], ["Luis", 23, "Male"]]

#se puede mostrar el contenido completo de la posicion que es ua matriz o cada elemento poniendo otros corchetes seguidis de los anteriores indicando el indice de la segunda matriz
p user[1][2]

#se puede asignar cada contenido de la matriz a una variable
bob, susan, larry = user
p bob
puts

#===============================================The partition method
#este metodo separa la matriz original en dos, dependiendo de la condicion, poniendo la matriz requerida a la izquierda y a la derecha lo restante de la matriz

foods = ["Steak", "Vegatables", "Steak Bueger", "Kale", "Tofu"]

good = foods.select { |food| food.include?("Steak") }
bad = foods.reject { |food| food.include?("Steak") }
p good
p bad
puts

p foods.partition { |food| food.include?("Steak") }
puts

a, b = foods.partition { |food| food.include?("Steak") }
p a
p b

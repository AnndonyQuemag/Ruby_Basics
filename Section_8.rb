#==================================================Introduction to arrays
#para definir una matriz se utilizan los corchetes []
p [].class
number = []
puts
#podemos almacenar los valores separados por una coma
number = [1, 2, 5, 7, 9, 12, 34]
p number
words = ["hello", "name", "toys"]
p words
#la matriz puede contener cualquier tipo de datos al mismo tiempo e incluso valores dupĺicados
words = ["hello", 8, true, 9 ,"finish", 8]
p words
#si queremos almacenar datos que se llenaran siempre como nombre, edad, genero podemos crear una matriz multidimencional con otros corchetes [[],[]]

student = [
  ["Anndony", 23, "Male"],
  ["Daniela", 22, "feminine"],
  ["Jose", 21]#no debe ser del mismo tamaño la matriz
]
puts student
puts

#=================================================Shorthand Syntax to create an array of string
#si se quiere crear una matriz de cadenas es mucho mas facil separar los valores con espacios que con comas para esto se pude hacer asi
words = %W[Anndony Jose Carlos Maria Camila]#se debe tener en cuenta que el delimitador es el espacio por lo cual si escribimos un nombre que contenga espacios seran dos elementos de la matriz como: Anne Maria
p words
puts

#==================================================cerate an array with array new method
words = ["hello", "world"]
#usando el metodo de new, debe ser Array.new, la a siempre es mayusculay podemos poner argmentos seguidos para especificar el tamaño de la matriz entre parentesis()
p Array.new(5)
#se puede asignar un valor epecifico para toda la matriz
p Array.new(5, "hello")
#para hacer una matriz multidimencional
p Array.new(5, Array.new(3))
puts

#=================================================Access Single Element by index position
#los indices de las matrices empiezan en cero el primer elemento tiene el indice cero, el segundo el indice 1 y asi sucesivamente
fruit = ["Apple", "Orange", "Grape", "Banana"]

p fruit[0]

#si queremos mostrar el ultimo valor de la matriz pero no sabemos cuantos elementos tiene el arreglo podemos hacerlo con (length-1)

p fruit[fruit.length-1]
#existe una forma mas facil de hacerlo con solo poner numeros negativos, teniendo en cuenta que el valor (-1) es el ultimo valor del arreglo
p fruit[-1]
#pero todo eso es una abreviacion de un metodo en realidad [].()
p fruit.[](3)
puts

#===============================================the fetch method
name = ["Anndony", "Juan", "Maria"]
#otra forma de mostrar los elementos es por medio de fetch(), pero se debe tener cuidado de el indice que se busca ya que si esete no existe nos dara un error
p name[2]
p name.fetch(2)
#para este caso entonces debemos agregar que queremos que nos muestre si el indice no existe poniendolo dentro del parentesis separado de una coma
p name.fetch(3, nil)
p name.fetch(3, "Unknown")
p name.fetch(3, ["hello", "world"])
puts

#============================================== Acces sequential array elements with bracket Syntax
#podemos extraer varios elementos al mismo tiempo utilizando los mismos corchetes como anteriormente se hizo pero esta vez poniendo desde que indice empieza y cuantos valores se quiere obtener
number = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p number[2, 3]

#si se intenta obtener mas valores de los que se tiene solo se mostrara hasta el ultimo valor sin nil para los demas indices que no existen
p number[2, 100]
puts

#============================================= Acess sequential array elements with a range object
#Se puede mostrar la cantidad de valores dependiendo de un rango el cual se expresa con dobles puntos dentro de los corchetes[]
numbers = [1, 3, 6, 8, 10, 12, 24, 36, 48]

p numbers[3..7]

#se puede excluir el ultimo valor como se miro anteriormente con triple punto dentro de los corchetes
p numbers[3...7]
puts

#=============================================== Access multiple array elements with the values_at
#el metodo values_at es otro metodo para extraer valores de una matriz el cual funciona como los metodos anteriores, pero lo que hace este metodo es mostrarnos todos los valores de los indices que nosotros pongamos dentro de los parentesis del metodo values_at sin importar el orden en que los pongamos o si estan repetidos y si ponemos un valor que no existe retornara nil

names = ["Sonia", "Tommy", "Toby", "Juan"]

p names.values_at(2, 0, 3, 2, 2, 2, 89)
puts

#===================================================The slice method
#Existe otro metodo que es identico a usar corchetes para mostrar los elementos de una matriz, slice funciona de la misma forma que lo hacen los corchetes, este metodo solo es uno mas de los muchos para mostrar elementos de una matriz

number = [0, 2, 4, 6, 8, 12, 14]

puts number.slice(1)
puts number[1]
puts

#=================================================== Overwrite one or more array elements
#este metodo sirve para mutar matrices lo que significa es que pueden ser cambiadas o alteradas, en matrices esto significa que puede tener valores agregados o eliminados

fruits = ["Apple", "Orange", "Banana", "Melon"]
p fruits

#Para cambiar algun valor de la mmatriz solo basta con poner el indice entre corchetes y con igual podemos asignarle el nuevo valor

fruits[1] = "Watermelon"
p fruits

#Ademas se puede agregar un nuevo valor a la matriz poniendo la posicion final que esta en nil y asignando el valor deseado
fruits[4] = "Raspberry"
p fruits

#Se debe tener en cuenta que si utilizamos un indice que no es el siguiente en la lista esta se llenara con valores nulos para llegar al indice que se desea
fruits[10] = "Raspberry"
p fruits

#si se desea modificar mas de un valor podemos recurrir a los rangos o seccuencias
fruits[3, 2] = ["Kiwi", "Lemon"]
p fruits

fruits[3..6] = ["melon", "Strawberry", "kiwi", "pineapple"]
p fruits

#si se pone que se reemplazar un numero de valores y se reemplaza menos lo que pasara es que los valores faltantes se eliminaran de la mmatriz
fruits[2..9] = ["melon", "Strawberry", "kiwi"]
p fruits
puts

#===============================================================the length and size methods
#estos metodos sirven para mostrar el tamaño de una mmatriz
p [1, 2, 4, 5, 7, 9, 12, 45, 60].length
p [1, 2, 4, 5, 7, 9, 12, 45, 60].size

#si se desea contar algun elemento se pude hacer con el metodo count y entre parentesis el elemento que seamos saber cuentas veces existe en la mmatriz
p [1, 2, false, true, 4, 5, true, 2, 3,  2, 4, 2].count(true)

#===============================================================The empty? and nil? methods on an array
#Estos metodos sirven para validar si una matriz esta vacia y retorna un valor booleano

p [].empty?
p [1, 2, 3, 4].empty?
puts

p [].nil? #este caso retorna falso ya que esta matriz no es igual a nil
p [1, 2, 3, 4].nil?
puts

#el metodo nil funciona cuando una variable o matriz tiene valores nulos
letter = ("a".."j").to_a #Convertir a matriz
character = letter[25]
p character
p character.nil?

#=============================================================the first and last methods
#Estos metodos se utilizan para mostrar los primero elementos o los ultimos elementos de la matriz

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p arr.first
p arr.first(1)#aunque parece lo mismo se debe tener en cuenta que al usar los parentesis el resultado va a ser una matriz, mientras que sin los parentesis el resultado sera un valor real

p arr.last
p arr.last(3)
puts

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end

p custom_first(arr)
p custom_first(arr, 1)
p custom_first(arr, 5)

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[-num..-1]
end

p custom_last(arr)
p custom_last(arr, 1)
p custom_last(arr, 5)
puts

#=======================================the push method the shovel operator and the
#este metodo lo que haces es empujar o almacenar el valor o los valores(separados por coma) que se desea al final de la matriz sin importar cuantos elementos hayan siempre se almacena al final

locations = ["House", "Airport", "Bar"]
p locations

locations.push("Restaurant", "Park")
p locations

#se puede realizar esto sin el metodo push usando las dobles signos de menor
locations << "Restaurant" << "Saloon"
p locations

#se puede insertar valor en cualquier indice que se desee con insert y dos argumentos dentro de los parentesis del metodo

locations.insert(1, "Restaurant", "Cafe", "Saloon")
p locations
puts

#============================================The Pop Method
#este metodo funciona haciendo lo contrario que el metodo push, este eliminara el ultimo valor de la matriz

arr = [5, 7, 9, 11, 13, 15, 17, 21]
p arr

arr.pop
p arr
puts
#Se puede proporcionar un valor como argumeto indicando el numero de elementos que se quiere eliminar

arr.pop(3)
p arr
puts

#===============================================The shift and unshift methods
#el emtodo shift lo que hace es eliminar el primer elemento de la mmatriz
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr

arr.shift
p arr
puts

#podemos agregarle como argumento el numero de elementos que queremos eliminar
arr.shift(2)
p arr
#El metodo unshift sirve para agregar elementos al inicio de la matriz separados por comas
arr.unshift(1, 3, 1)
p arr
puts

#=============================================== Equality and inequality operators with arrays
#las matrices se pueden comparar como cualquier otra variable en ruby solo con el operador igual(==) o diferente(!=)
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b
p a == c
p a == d
puts

#===========================================The spaceship operator
#este operador (<=>) devuelve 4 posibles retornos (Negativo, cero, uno, nil)
#Siempre que los valores a cada lado del operador sean iguales el retorno sera cero (0)
#Siempre que el valor de la derecha sea mayor que el de la izquierda el resultado sera (-1)
#siempre que el valor de la izquierda sea mayor que el de la derecha el retorno sera (1)
#Siempre que se intente comparar elementos incompatibles como un numero con una matriz el resultado sera nil ya que ruby no podria separar la matriz para realizar la comparacion

p 5 <=> 5

p 5 <=> 10

p 5 <=> 3

p 5 <=> [1, 2, 3]
puts

#==========================================Convert Range to array
#para convertir un objeto de tipo rango a matriz se utiliza el (.to_a)

letter = "A".."t"
p letter

letter_array = letter.to_a
p letter_array
puts

#funciona para cualquier tipo de matriz de datos
numbers = 1..120
p numbers

numbers_array = numbers.to_a
p numbers_array[1..30]
puts

#=============================================The is_a? Method
#este metodo (is_a?) es un metodo boleano para saber cual es la clase de objeto que se esta analizando
#el funcionamiento de este metodo es sencillo pues solo se debe poner is_a? seguido de parentesis donde ira la clase que se quiere verificar siempre iniciando con letra mayuscula(Clase)
def verify(par)
  if par.is_a?(Integer)
    "Number"
  elsif par.is_a?(Array)
    "Array"
  elsif par.is_a?(String)
    "String"
  elsif par.is_a?(Float)
    "Float"
  else
    "Other"
  end
end

p verify(["a", "b"])
#Existe una jerarquia en los objetos (BasicObject, Object, (Integer, Array, Float, ...))

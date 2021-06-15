#======================================================================Intro to met
#para definir un metodo se debe empezar con def
def introduce_myself
  puts "My name is Anndony Quemag"
  puts "My age is 23"
  puts "Im work at kommit"
end
#el metodo debe estar antes de llamarlo de lo contrario tendra un error el codigo, como el metoodo no tiene entradas no es necesario poner parentesis
introduce_myself()
introduce_myself
puts
#====================================================================Local variables
#se definen dentro de la definicion de un metodo y esta solo se ejecutara mientras el metodo se este ejecutando
last_name = "Quemag1"
def introduce_myself
  name = "Anndony"
  last_name = "Quemag"
  puts name
  puts last_name
end

introduce_myself
#puts name #genera error ya que la variable name no existe forma global
puts last_name #pueden tener el mismo nombre de las variables locales, pero tiende a generar confusion
#===================================================================Method parameters and arguments
#se definen al crear el metodo en parentesis despues del nombre
def introduce_parameter(name, age)
  puts "My name is #{name}"
  puts "My age is "+age.to_s #{name}"
end
introduce_parameter("Anndony", 23)
puts
#==================================================================Return values
def add_two_numbers(num1, num2)
  puts "Solving the problem"
  return num1+num2
end
#add_two_numbers(12, 13)#el valor se almacena en la variable por lo cual debemos imprimir
p add_two_numbers(12, 13)
puts
#===============================================================Return values II
#no es necesario tener un puts dentro del metodo o un return se puede imprimir su contenido asi
def return_string
  "This is a test"
end

p return_string
#si intentamos imprimir el valor de un puts que esta dentroo de un metodo nos dara nulo ya que este devuelve el resultado de un componente del metodo

def return_string1
  puts "This is a test"
end

result=return_string1
p result
puts
#==========================================================The if statement
#para realizar una comparacion se utiliza if
if 5 < 7
  puts "the results is true"
end
#de igual forma si se quiere comparar string
name ="Anndony"
if name.downcase < "Anndony"
  puts "the results is true"
end
puts
#tambien funciona para metodos
if name.include?("don")
    puts "the results is true"
end
puts
#========================================================truthiness and falsiness
#para saber si es verdadero o falso
if true
  puts "That is true"
end

if 5 #el resultado es verdadero ya que aunque 5 no es booleano es un valor de verdad
  puts "That is true"
end
puts
#=======================================================If, elseif
color = "red"
if color == "red"
  puts "Yes!!!"
end

if color == "green"
  puts "Yes!!!"
end
puts
#lo anterior es equivalente a lo siguiente, si color no es igual a red pasa a la siguiete condicino del elsif

if color == "red"
  puts "Red Yes!!!"
elsif color == "green"
  puts "Green Yes!!"
elsif color == "yellow"
  uts "yellow Yes!!"
end
puts
#=================================================If, else
#si la condicion no cumple con las opciones pasara al else
great = "c"
if great == "a"
  puts "That's an exellent"
elsif great == "b"
  puts "let's bring it up next time"
else
  puts "unacceptable!!"
end
#al igual que los demas se puede utilizar ddentro de un methodo
def condition(num1,num2)
  if num1<num2
    "Yes #{num1} < #{num2}"
  else
    "No! #{num1} > #{num2}"
  end
end

p condition(3, 2)
#==============================================Multipĺe conditions whit &&
#para realizar comparaciones multiples utilizando union se usa (&&)
name = "Anndony"
last_name = "Quemag"

if name == "Anndony"
  if last_name == "Quemag"
    puts "Yes, this is my name"
  end
end
#pero podemos escribir esto en una sola linea
if name == "Anndony" && last_name == "Quemag"
  puts "Yes, this is my name"
end
#============================================Multipĺe conditions whit ||
#para realizar comparaciones multiples utilizando (o) se usa (&&)
word = "hello"
other = "world"

if word == "hi"
  if other == "hello"
    puts "Yes!!!!!!!!!"
  end
end
#pero podemos escribir esto en una sola linea
if word == "hello" || other == "world"
  puts "Yes!!!!!!!!!"
end
###########################################################################
num1 = 3
num2 = 2
num3 = 3
if num1 < num2 && num1 < num3 && num3 < num2
  puts "the order of the numbers is: #{num1}, #{num3}, #{num2}"
elsif num1 < num2 && num1 < num3 && num3 > num2
  puts "the order of the numbers is: #{num1}, #{num2}, #{num3}"
elsif num1 > num2 && num1 > num3 && num3 > num2
  puts "the order of the numbers is: #{num2}, #{num3}, #{num1}"
elsif num1 > num2 && num1 > num3 && num3 < num2
  puts "the order of the numbers is: #{num3}, #{num2}, #{num1}"
end
#======================================================Parentheses precedence
#cuando se va a convinar o agrupar ciertas cosas podemos utiliazar los parentesis así
def test(name, last_name, age)
  if (name == "Anndony" && last_name == "Quemag") || age == "23" #esta condicion puede generar confusion por lo cual es mas recomendable utilizar comillas para que ruby entienda bien que condicion queremos poner
    puts "Yes, the information is correct"
  else
    puts "No! The information is false"
  end
end
test("Anndony", "Quemag",22)
puts
#=======================================================Nested if statements
#las declaraciones if anidadas son declaraciones if dentro de otro if

def meal_plane(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      "Cereal"
    elsif time_of_day == "lunch"
      "Sandwinch"
    elsif time_of_day == "dinner"
      "Chicken nuggets"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "breakfast"
      "French toast"
    elsif time_of_day == "lunch"
      "Pizza"
    elsif time_of_day == "dinner"
      "Steak"
    end
  end
end
p meal_plane("weekday", "lunch")
#===============================================The respond_to?
#el metodo respond_to? lleva el signo de interrrogacion al final lo que indica que es un metodo booleanoque retornara true o false, para esto se debe proporcionar un argumento que sera el nombre de otro metodo
num = 1000

p num.respond_to?("class")
if num.respond_to?("next")
  num.next
end

#======================================================================Intro to met
#to define a method you must start with def
def introduce_myself
  puts "My name is Anndony Quemag"
  puts "My age is 23"
  puts "Im work at kommit"
end
#The method must be there before calling it, otherwise the code will have an error, as the method has no inputs, it is not necessary to put parentheses
introduce_myself()
introduce_myself
puts
#====================================================================Local variables
#are defined within the definition of a method and this will only be executed while the method is executing
last_name = "Quemag1"
def introduce_myself
  name = "Anndony"
  last_name = "Quemag"
  puts name
  puts last_name
end

introduce_myself
#puts name #generates error since the name variable does not exist global form
puts last_name #they can have the same name as the local variables, but it tends to generate confusion
#===================================================================Method parameters and arguments
#are defined when creating the method in parentheses after the name
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
#add_two_numbers(12, 13)#the value is stored in the variable so we must print
p add_two_numbers(12, 13)
puts
#===============================================================Return values II
#It is not necessary to have a puts inside the method or a return, its content can be printed like this
def return_string
  "This is a test"
end

p return_string
#if we try to print the value of a puts that is inside a method it will give us null since it returns the result of a component of the method

def return_string1
  puts "This is a test"
end

result=return_string1
p result
puts
#==========================================================The if statement
#to make a comparison use if
if 5 < 7
  puts "the results is true"
end
#in the same way if you want to compare string
name ="Anndony"
if name.downcase < "Anndony"
  puts "the results is true"
end
puts
#also works for methods
if name.include?("don")
    puts "the results is true"
end
puts
#========================================================truthiness and falsiness
#to know if it is true or falseo
if true
  puts "That is true"
end

if 5 #the result is true since even though 5 is not boolean it is a true valuead
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
#The above is equivalent to the following, if color is not equal to red, it passes to the following condition of the elsif

if color == "red"
  puts "Red Yes!!!"
elsif color == "green"
  puts "Green Yes!!"
elsif color == "yellow"
  uts "yellow Yes!!"
end
puts
#=================================================If, else
#if the condition does not meet the options it will go to else
great = "c"
if great == "a"
  puts "That's an exellent"
elsif great == "b"
  puts "let's bring it up next time"
else
  puts "unacceptable!!"
end
#like the others it can be used within a method
def condition(num1,num2)
  if num1<num2
    "Yes #{num1} < #{num2}"
  else
    "No! #{num1} > #{num2}"
  end
end

p condition(3, 2)
#==============================================Multipĺe conditions whit &&
#to perform multiple comparisons using union use (&&)
name = "Anndony"
last_name = "Quemag"

if name == "Anndony"
  if last_name == "Quemag"
    puts "Yes, this is my name"
  end
end
#but we can write this on one line
if name == "Anndony" && last_name == "Quemag"
  puts "Yes, this is my name"
end
#============================================Multipĺe conditions whit ||
#to perform multiple comparisons using (or) use (&&)
word = "hello"
other = "world"

if word == "hi"
  if other == "hello"
    puts "Yes!!!!!!!!!"
  end
end
#but we can write this on one line
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
#when you are going to combine or group certain things we can use the parentheses like this
def test(name, last_name, age)
  if (name == "Anndony" && last_name == "Quemag") || age == "23" #This condition can generate confusion, so it is more advisable to use quotation marks so that ruby understands well what condition we want to put
    puts "Yes, the information is correct"
  else
    puts "No! The information is false"
  end
end
test("Anndony", "Quemag",22)
puts
#=======================================================Nested if statements
#nested if statements are if statements inside another if

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
#the method respond_to? It has the question mark at the end which indicates that it is a Boolean method that will return true or false, for this an argument must be provided that will be the name of another method
num = 1000

p num.respond_to?("class")
if num.respond_to?("next")
  p num.next
end
#This method is used to check if something exists in the object and thus be able to continue workingo
puts "hello".respond_to?("length")
puts "hello".respond_to?(:length)#without having to put quotes, the colon is used to put the method
#==============================================The ternary operator
#we can replace comparisons with a ternary operator, which is so called because there are three components or sections and each one is separated by a sign
if 1<2
  puts "Yes, it is"
else
  puts "No, it's not"
end
puts
puts 1 < 2 ? "yes, it is" : "No, it's not" #What should be done is to make a comparison followed by a question mark (?) To indicate if it is true and after this two points to indicate that it is not true (:)
#otro ejemplo
puts "Hello".downcase == "hello" ? "The two are equal" : "The two are't equal"
def test(num)
  num.even? ? "That number is even" : "That number is odd"
end
puts test(13)
#With this method, lines of code are saved since the entire comparison is equal to an if, so when performed in a line
puts
#=======================================================Default or optional parameters
#the default parameters, what it is about is that an argument of a ruby method most of the time expects that they send a value of the same type of the argument, so a parameter can be provided a default value that will be used as a specific parameter using the same like this
def make_phone(num, code = 1, area = 10)
  puts "calling #{num}, whit code #{code} - #{area}"
end

make_phone(12345656) #in this case only one argument of three is sent, but the result does not generate any error since specific parameters have been defined
puts
#=======================================================Call a method from another method
#we can call a method within another method by interpolation like this
def add(a,b)
  a+b
end
def substract(a, b)
  a-b
end
def multiply(a,b)
  a*b
end

def calculator(a = 1,b = 1, operation = "add")
  if operation == "add"
    add(a, b)
  elsif operation == "substract"
    substract(a, b)
  elsif operation == "multiply"
    multiply(a, b)
  else
    "That's not a real math operation"
  end
end

#p calculator(1,2,"add")#This calls the calculator method and this method in turn makes a comparison to call other methods, it must be taken into account that the methods must be defined before calling them otherwise we will have an error
#if we want to call the method with a message we can do it like this
def calculator(a = 1,b = 1, operation = "add")
  if operation == "add"
    "The result of operation #{a} + #{b} is: #{add(a, b)}"
  elsif operation == "substract"
    "The result of operation #{a} - #{b} is: #{substract(a, b)}"
  elsif operation == "multiply"
    "The result of operation #{a} * #{b} is: #{multiply(a, b)}"
  else
    "That's not a real math operation"
  end
end
p calculator(4, 2, "multiply")

#==================================================The case Statement
#This declaration allows us to replace the if and else if operations, it is advisable to use this declaration when using many nested ifs such as three or more, using a case and a when like this
def my_food(food = "hamburguer".capitalize)
  case food
  when "Steak"
    "Ohh, delicious"
  when "Sushi"
    "ummm, I don't like"
  when "Pizza"
    "The pizza es very delicious"
  when "Hamburguer", "Chips", "Chicken nuggets"#we can put multiple comparisons separated by a comma for a specific message saving comparators like && and saving space without if
    "Ohh, mi favorite food"
  else
    "I'm sorry, I don't know about that food"
  end
end

p my_food("potatoes".capitalize)
puts

def calculate_number(num = 14)
  case num
  when 1 .. 10# calculates if the number sent by parameter is between 1 and 10 with the double point method (..)
    "Range one"
  when 11 .. 20
    "Range two"
  when 21 .. 30 then "range_three"
  else
    "The number no exist in the Range"
  end
end

p calculate_number(23)
puts

# we can also use then to show the messages and save lines of code
def calculate_number_one(num = 14)
  case num
    when 1 .. 10 then "Range one"
    when 11 .. 20 then "Range two"
    when 21 .. 30 then "Range_three"
    else "The number no exist in the Range"
  end
end

p calculate_number_one(7)
puts

#============================================================Negation with (!)
#Negation is expressed with the exclamation point (!)
puts !false # as you can see the negation of false will give us a result that in this case is true
puts

puts !1 #a true value is being denied so it returns a false
puts

puts !""
puts

puts !!false #in this case we start denying something and after that we deny it again it is like canceling the first negation
puts

#===========================================================the unless keyword
#the word unless is used, which is used to execute if it is false, then to show how it works we will compare it with an if
password = "test"

if password != "dog"
  puts "Not allowed"
else
  puts "That's the right password, Welcome!..."
end
puts

unless password == "dog"#in this case when using unless we are negating the equal comparator (==), then what we would say is not if it is equal do this, we would say if it is unless this is equal do
  puts "Not allowed"
else
  puts "That's the right password, Welcome!..."
end
puts

if !password.include?("a")
  puts "It does not include the letter"
end
puts

#=========================================================The while keyword
#use while to create a loop that will repeat itself over and over again
i = 1

while i <= 10#everything that is inside the while is executed as long as the condition is correct
  puts "Iteration: #{i}"
  i += 1
end

=begin
status = true

while status
  print "Please enter username: "
  username = gets.chomp.downcase
  print "Please enter password: "
  password = gets.chomp

  if username == "anndony" && password == "123456789"
    puts "Yes!! User confirmed, Welcom..."
    status= false
  elsif username == "quit" || password == "quit"
    puts "Goodbay. Better luck next time"
    status = false
  else
      puts "Incorrect combination, try again or enter 'quit'"
  end
end
=end
puts

#=========================================================the until keywordoar
#A loop will be created that can be like a complement to the while loop but this time with until, but this is executed in the opposite way to while like this
i = 1

while i < 10
  puts i
  i += 1
end
puts

i = 1

puts "Ciclo Until"
puts

#now if we want to take this loop to an until loop
until i > 9 #until is executed while the condition is false, when the condition is true the loop ends
  puts i
  i += 1
end
puts

#==========================================================Fizzbuzz
#This is a type of problem that most of the time is easy to solve but it can become much more complicated than it seems.
def fizzbuzz(num)
  aux = 1
  while aux <= num
    if aux % 3 == 0 && aux % 5 == 0
      puts "The number #{aux} is divided by 3 y 5 'Fizzbuzz'"
    elsif aux % 3 == 0
      puts "The number #{aux} is divided by 3 'Fizz'"
    elsif aux % 5 == 0
      puts "EThe number #{aux} is divided by 5  'Buzz'"

    end
    aux += 1
  end
end

fizzbuzz(45)
puts
#=======================================================Statement modifiers
#line modifiers work to modify what we write as an if, it serves as a shorthand syntax to decrease the number of lines of code
vara = 3
ver = true

if vara < 10 && ver
  puts "yes, the number is less than 10"
end

#to use the line modifier in this case we must put the message at the beginning and follow the if condition separated by a space
puts "yes, the number is less than 10" if vara < 10 && ver

#in the same way we can do this with unless
puts

unless vara > 10 && !ver
  puts "yes, the number is less than 10"
end

puts "yes, the number is less than 10" unless vara > 10 && !vera
puts
#=================================================Conditional Assingment
#the conditional assignment operator allows assigning a new value to a variable if and only if the value of said variable is null
varb = nil
p varb
puts

#we can easily assign a new value to varb with equal (=), so the difference between this assignment and using the conditional assignment (||) is that it will only be executed if the value of the variable is nil
varb = 7
p varb
puts

varb = 10#the value 10 was assigned to the variable varb even though a value already existed previously (7)
p varb
puts

varc = nil
varc ||= 20#since varc is nil the value 20 is assigned
p varc
puts

#if we try to use the conditional assignment to see that it is not nil the value will not be assigned
varb ||= 20
p varb
puts

#This is recommended when looking for a position that does not exist in some arrangement or word
word = "Hello"
pos = 4
result = word[pos]

result  = "Not Found"

p result

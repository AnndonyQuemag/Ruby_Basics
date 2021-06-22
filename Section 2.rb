#========================================================Metodo Puts
puts "First test of Ruby"
puts "Hello"
puts

puts "I paid 5 dollars at the store"
puts

puts 5
puts

puts 3.14159
puts

puts 4 + 3
puts

puts "4" + "3" #the sign + join chain too
puts

#=======================================================print methods
print "Hello print"
print " World"
#print without line breaks
puts

#=======================================================p methods
#the letter p shows the same as puts by increasing the quotation marks to mention a phrase
p "Test of p"
puts

puts "Hello, puts test
line jump"
puts

p "Hello, p test
line jump"
puts

#=======================================Basic Arithmetic
p 1 + 4
puts

p 10 - 6
puts

p 3 * 4
puts

p 2 / 2
puts

p 2 % 2
puts

p 12 / 5
puts

p 12.0 / 5 #with point decimal division is performed
puts

p 2 * 2 * 2 * 2
puts

p 2 ** 4 #double (**) is used to perform power
puts

#==========================================comments

=begin
  puts "test comments"
  puts "test comments 2"
=end

#========================================Variables
name = "Anndony"
last_name = "Quemag"
band = true
age = 24 + 1

puts name
puts name + " " + last_name #strings attached
puts band
puts age
puts

var = 30
p var
puts

var = "Changed to string" #the value was changed from numeric to string
puts var
puts

#=====================================Parallel Variables assignment
a = 10
b = 20
c = 30

puts a, b, c
puts

a, b, c = 40, 50, 60

puts "In a line"
puts a, b, c
puts

puts "Assigning on a line"

a, b, c = b, c, a
puts a, b, c
puts

print "a: #{a}", " b: #{b}", " c: #{c}" # print strings with numbers
puts

#====================================Constants
PI = 3.14159

NAME = "Anndony"

num = 90

puts "My name is #{num}"
puts

#=====================================Object methods
#Counts number of characters (.length)
p "Hello World".length

cont = "Hello World"
p cont.length
puts

#Change all letters to uppercase (.upcase)
p "Hello World".upcase

mayu = "hello world"
p mayu.upcase
puts

#Change all letters to lowercase (.downcase)
p "HELLO WORLD".downcase

minu = "HELLO WORLD"
p minu.downcase
puts

#Put the following (.next)
puts 10.next
puts

#Inspect similar to p (.inspect)
puts "Hello World".inspect
puts

#=====================================string Interpolation
#convert to string
p 5.to_s

age = 23

p "I am " + age.to_s + " years old"
p "I am #{age} years old"
puts

p "The result od adding 1 + 1 is #{1 + 1}"
puts

p "My name is #{name + " " + last_name}, I am " + age.to_s + " years old." #print strings with numbers converting age to string
puts

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

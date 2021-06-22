#====================================Create a string
example = "Hey there, I'm string"# the strings must be in quotes
puts example
puts

space = " "
p space # el espacio es considerado un caracter
p space.length
p space.class
puts

#you can also create string with new
name = String.new("Anndony Quemag")
p name
puts

#===================================Multiline String
#to start you must use the minor symbol twice and followed by a word (MLS), AFTER THE WORDS YOU WANT TO WRITE WITHOUT THE NEED OF quotation marks
#the wordmap (MLS) must be followed by the double minor symbols with no space
words = <<MLS
My name is Anndony Quemag
This is a test of Multiline string
MLS
puts

print words
puts

puts words
puts

#==================================Escape character
#double quotes and single quotes can be used to represent a string and they can be combined if necessary
puts "Hello, 'Anndony' how are you?"
puts 'Hello, "Anndony" how are you?'
puts

#you can use backslash (\) before the quotes so that ruby ignores or takes them as a character quotes
puts "Hello, \"Anndony\" how are you?"
puts 'Hello, \'Anndony\' how are you?'
puts

#to perform a line break without having to use another puts you can use (\ n) "THIS DOES NOT WORK IN SINGLE QUOTES ('')"
puts "Hello, \"Anndony\" \nhow are you?"
puts

#This can only be used with the puts method since if we use it with p, which is a more scientific and technical method, it will show us everything as a string
p "Hello, \"Anndony\" \nhow are you?"
puts

#to make a jump as tab you can use (\ t) "THIS DOES NOT WORK IN SINGLE QUOTES ('')"
puts "Hello, \"Anndony\" \thow are you?"
puts

#====================================Single vs double Quoted Quotes
#When using single quotes interpolation does not work
name= "Anndony Quemag"

puts '#{name}'#prints exactly what is inside the single quotes
puts "#{name}"#print the content of the variable
puts

#======================================Equality and inequality operations with string
#to compare string use (=) and to differentiate (! =)
a = "hello"
b = "Hello"
c = "hello"

p a == b
p a == c
puts

#It can also be compared if it is greater or less (>, <)
p "hello" < "help"
p "Hello" < "banana"
puts

#care must be taken with upper and lower case
p "A" < "a"
p "Z" < "a"
puts

p "Hello" < "banana"
p "Hello" < "Banana"
puts

# you can also compare booleans
p true == false
p true == true
puts

#==============================================Concatenate strings
first_name = "Anndony "
last_name = "Quemag "
p first_name + last_name
puts

#appears without space we can add space to the end of the string, here are some ways to concatenate strings
#first_name+=last_name
#p first_name
puts

#first_name = first_name.concat(last_name)
#p first_name << last_name << "wizard"
first_name.prepend(last_name)#Reverse the print order
p first_name
puts

#===============================================the length and size methods
#The length method and the size method perform the same function, so it does not matter which one is taken.
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
puts

#a letter can be extracted from the string (story) using the position it is in
p story[3]
puts

#If negative numbers are used, the last character can be obtained with (-1), the penultimate with (-2), and so on
p story[-1]
p story[-40]#if the position does not exist, it returns a null value (nil)
puts

#If we want to extract a character by the position of the index we use the method (slice ())
p story.slice(3)
puts

p story[-4]
puts

p story.slice(-4)
puts

#=============================================Extract multiple characters from String
story= "Once upon a time in a land far, far away"
#to extract a group of characters, the combination of the initial position plus the number of characters we need is used

p story[5, 4]
puts

p story.slice(0, 4)
puts

p story[0, story.length]
puts
#=============================================Extract multiple characters with range object
story= "Once upon a time in a land far, far away..."
#to extract a group of characters between two positions it is used with a double point (12..23), not including the last position
p story[27..39]
p story.slice(27..39)
puts

#if we use three points (12 ... 27), it does not take the last two positions
p story[27...39]
p story.slice(27...39)
puts

p story[27...100]#if we write it to go to a position that does not exist ruby cuts the string up to where there are characters and only shows that
p story[27...-7]
puts
#=============================================Overwrite characters in strings
thing ="This is a test Overwrite"
p thing
#to replace a letter in a string, just indicate the position
thing[0] = "p"
p thing
puts

thing[1] = "a"
p thing
puts

thing[9] = " "
p thing
puts

#you can also replace a group of characters like this
thing[2, 4] = "exam" #from position two, four next carat replace them with ...
p thing
puts

thing[2..5] = "exam" #from position two to position five replace with
p thing
puts

thing[2..5] = "test example" #from position two to position five replace with
p thing
puts
#====================================================Case methods
#to print the first letter of a paragraph and sentence in uppercase is used in capitalize method
puts "hello word".capitalize
puts

#upcase is used to capitalize everything and dowcase to lower case everything
puts "HELLO WORD".downcase
puts "Hello word".upcase
puts

#to exchange upper and lower case we use swapcase
puts "HelLo WoRd".swapcase
puts

#======================================================reverse method on a String
#to Print an inverted string the reverse method is used
puts "Ruby".reverse
puts

#you can print strings with multiple methods together like this
puts "Ruby is fun".upcase.reverse
puts

#======================================================Bang methods on String
#if we want to modify a variable that contains a string we can use the exclamation symbol (!) which performs an operation and stores or overwrites the object
word = "hello word"

p word
p word.capitalize #change the first letter to uppercase but it is only temporary the variable remains the same
puts

#word = word.capitalize # assignment to the word variable of its content modified with capitalize

#p word
#to do this more easily
word.capitalize!
p word
puts

#in the same way it can be done with other methods such as upcase, downcase, reverse, swapcase
word.downcase!
p word
puts

word.upcase!
p word
puts

#======================================================The include?
#to find a string in another string you can use the method include? ("What you are looking for")
word="Hello world"
p word.include?("wor")
puts

p word.include?("h")#no matter how many times it finds the character or word, it will return true if there is any match, deferring case and spaces
puts

#if we want to ignore capital letters we would have to convert them
p word.downcase.include?("h")
puts

#========================================================The empty? and mil? methods on String
#to measure if a string is empty we can use empty?
puts "".empty?
puts

puts "hello".empty?
puts

#to know when a string is null we use nil?
puts "Test nil".nil?
puts

#when a string is empty it is not null
puts "".nil?
puts

name = "Anndony"
last_name = name[20, 8]

puts last_name
puts last_name.nil?

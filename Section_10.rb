#===================================The split method on a string
#it is used to divide a string into words, the default delimiter is space, but you can add parentheses to generate a custom delimiter
sentence = "Hi, my name is Anndony. There are spaces here!"

p sentence.split(" ")
puts

#this is useful when you want to know how many words a string has or how many letters each word has
words = sentence.split(" ")
words.each { |word| puts word.length}
puts

#===================================Iterate over string characters
#to iterate strings you can use the each method that was already seen above but adding _char (each_char)
"Hello world".each_char { |chr| puts chr }

name = "Anndony"

#you can use split to separate the chain, but you can also use chars for the same
p name.split("")

p name.chars
puts

#If you want to show each letter pose separately, you can use the chars method to store each letter in a matrix position and then scroll through it.
letters = name.chars
letters.each { |letter| puts "#{letter} is awesome!"}
puts

#====================================the join method on an array
#this method takes an array and returns a string with join () in which the delimiter for each element is set within the parentheses
names = ["Joe", "Moe", "Bob"]

p names.join("-")
puts

#another example

p ["h", "e", "l", "l", "o"].join
puts

#exercise
def custom_join(array, delimiter = "")
  string = ""

  array.each_with_index do |elem, index|
    string << elem
    string << delimiter if index != array.length - 1
  end
  string
end

p custom_join(names)
p custom_join(names, " ")
p custom_join(names, "!--!") == names.join("!--!")
puts

#========================================The count method on a string
#This method is used to count the characters in a string that you want with count (), putting the character you want inside the parentheses
puts "Hello world".count("lw")

#to make a method that counts the characters you want
def custom_count(string, search)
  count = 0
  string.each_char do |char|
    count += 1 if search.include?(char)
  end
  count
end

p custom_count("Hello world", "lw")
puts

#======================================The index and rindex methods
#These methods return the first or last position of the letter you want to search for.
fact = "I am very handsome."

p fact.index("e")#this method returns the first position where the searched character is found
p fact.rindex("e")#this method returns the last position of the searched character
puts

#If you want to search from a specific position, you must put a comma followed by the character to search with the position
p fact.index("e", 7)
p fact.rindex("e", -3)#For the rindex method, it must be taken into account that the positions start at the end of the chain, which is why they go negative
puts

#exercise
def custom_index(string, substring)
  return nil if !string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index(fact, "I")
p custom_index(fact, "h")
p custom_index(fact, "z")
p custom_index(fact, "am")
puts

#===================================== The insert method on a string
#To add something in a string, insert () is used, within the parentheses we must put the following position to which we want to enter followed by a comma and what we want to add
typo = "GeorgWashington"
typo.insert(5, " ")

p typo
puts

#========================================The squeeze method on a string
#remove repeating characters from a string
sentence = "Thhe     aardvark     jummped     ovver the  fence!"
sentence.squeeze!("h")#You can put the character you want to eliminate in the string in parentheses, also if you want to change the original variable, use the exclamation mark before the parentheses

puts sentence

#exercise

def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    if char == chars[index + 1]
      next
    else
      final << char
    end
  end
  final
end

p custom_squeeze(sentence) == sentence.squeeze
puts

#========================================The clear method on a string
#this method is used to delete the content of the string
word = "Hello world"

word.clear

p word
puts

#this method is used to delete all the characters that are specified from the string
puts "Hello world".delete("ldr")

word = "Hello World!"
#exercise
def custom_delete(string, character)
  new_string = ""
  string.each_char do |char|
    if !character.include?(char)
      new_string << char
    end
  end
  new_string
end

p custom_delete(word, "l")
puts

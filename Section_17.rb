#=============================the start with? and end with? methods
#this section deals with regular expressions, which are complex
#These try to extract substrings from a larger chain by using symbols
phrase = "The Ruby Programming Language is amazing!"

#is compared if the content of the parentheses is at the beginning of the string if so it returns true otherwise it returns false
# The difference between uppercase and lowercase is important, so it is advisable to use downcase
puts phrase.downcase.start_with?("the ruby")
puts phrase.downcase.start_with?("ruby")
puts

#whit end_with will return true if the search is at the end, otherwise it will return false
puts phrase.downcase.end_with?("amazing")
puts phrase.downcase.end_with?("amazing!")
puts

substr = "zing!"

def custom_start_with?(string, substring)
  string[0, substr.length] == substring
end

def custom_end_with?(string, substring)
  string[-substring.length..-1] == substring
end

p custom_end_with?(phrase, substr)
puts

#==============================The include? method
#this method searches a string and returns a boolean value
phrase = "The Ruby Programming Language is amazing!"

p phrase.downcase.include?("ruby")
p phrase.downcase.include?("phyton")
puts

serach_for = "Language"

def custom_include?(string, substring)
  len = substring.length
  string.chars.each_with_index do |char, index|# the chars method converts the string to an array of characters
    return true if string[index, len] == substring
  end
  false
end

p custom_include?(phrase, serach_for)
puts

#=================================intro to regular expression
#una expresion regular es un objeto ruby, la expresion regular oficial enm ruby se llama regexp
#las expresiones regulares se crean con dos barras diagonales
#la sintaxis para retornar el index es (string =~ //)
puts //.class
puts

test = "The Ruby Programming Language is amazing."

p test =~ /b/ #shows the position of the searched value, if it is repeated it shows the position of the first time it finds it
puts

#===============================the scan method part 1
#is a method that takes a regular expression as an argument, it checks if the string expression matches the regular expression
voice = "Ican be reached at 555-123-4567 or regex@gmail.com"

#get an array with the result
p voice.scan(/re/)
puts

# if you use square brackets you get the result separately from the characters sent
p voice.scan(/[re]/)
puts

#================================the scan method part 2
#If a backslash is used inside the slashes it works as a digit and not as a regular expression, so it will get all the digits with (\ d)
p voice.scan(/\d/)
puts

# if the sign (+) is also used, an array is created in which the delimiter is a non-numeric value
p voice.scan(/\d+/)
puts

#this returns a block through which it can be traversed
p voice.scan(/\d+/) { |digit_match| puts digit_match.length }
puts

#===================================the wildcard symbol
#this is a wildcard method used to indicate any character is the period (.)
phrase = "The Ruby Programming Language is amazing."

p phrase.scan(/./)

#this is useful when you want to search for something that ends or starts in some value, also you can use as many points as you want to find a word
p phrase.scan(/.a.m..../)
puts

p voice.scan(/\d\d\d.\d\d\d.\d\d\d/)
puts

#===================================the backslash character
#this character can be used for many things, such as searching for a specific character such as the wildcard character
paragraph = "This is my eassay. I deserve an A. I rank it a 5 out of 5."

p paragraph.scan(/./)
puts

p paragraph.scan(/\./)
puts

# if the backslash is used with D it will return all non-digit characters
p paragraph.scan(/\D/)
puts

# if the backslash is used with s it will return the number of blanks
p paragraph.scan(/\s/)
puts

#If the backslash is used with S it will return all characters that are not whitespace
p paragraph.scan(/\S/)
puts

#===========================RegEx_anchors
#an anchor is a symbol that links a match to a point within the chain
poem = "99 bottles of beer of the wall, 99 bottles of beer"

#If \ A is added, it will only take the first digit or value that is searched
p poem.scan(/\A\d+/)
puts

# if \ z is used this must always go to the end of the regular expression since it always looks at the end
p poem.scan(/eer\z/)
puts

#======================================Exclude Charactes
#it ​​is possible to use regular expressions to exclude characters with the symbol (^)
sales = "I bougth 9 apples, 25 bananas. and 4 oranges at the store."

p sales.scan(/[^aeiouAEIOU\s\d]/)
puts

#====================================The subs and gsubs methods
# these methods allow finding and replacing substrings within string

#with sub the first match it finds is replaced
puts "whimper mmmmm".sub("m", "s")
puts

puts "wordplay".sub("word", "sword")
puts

word = "aspirin"

word.sub!("in", "ing")#if you want to replace the original variable, use the exclamation mark
p word
puts

#with gsub it remembers all the matching values
puts "an apple".gsub("a", "-")
puts

puts "(555)-555 1234".gsub(/[-\s\(\)]/, "")
puts

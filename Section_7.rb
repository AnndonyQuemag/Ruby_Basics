#=========================================Intro to ranges
#a range includes two positions (a, b) this goes from position a and includes all values up to position b it is represented with a double point (..)
num = 1..50
p num.class
#If we want to exclude the final value of the range, we must put a triple point as we saw it in past videos (...)
#nums = 1...5
#p nums.class
#if we want to print the first number or the last
p num.first
p num.last

#If we want to show the numbers of the range we can put how many we want in parentheses (#)
p num.first(2)

#It must be taken into account that to use the ranges they must be assigned to a variable since if we try with a puts it will generate an error unless we put the range between parentheses
#puts (1..50).first(3)
puts

#==========================================Alphabetical ranges
#Alphabetical ranges work practically the same as numerical ones
alphabet = "a".."z"

p alphabet.first(32)

#Ruby has an alphabet that starts with capital letters (A, Z) followed by some symbols and after that the lowercase letters (a, z)
alphabets = "A".."z"
p alphabets.first(50)
puts

#==========================================The size method on a range
#the number of elements that are contained in a range are expressed with the size method
numbers = 123..743
p numbers.size

p numbers.first(numbers.size)
puts

#===========================================Check if a value is in a range
#we can check if the range contains elements by means of the include method that was already looked at previously
words = "a".."m"
puts words.include?("h")

number = 1...50
puts number.include?(79)
#To make this comparison, the triple equal is also used like this

p words === "h"
p number === 23
puts

#========================================== Generate a random number with the rand method
#the rand method works without the need to add it to some variable and generates a floating random number between 0 and 1
puts rand

#now if you want to round the number a number of digits use round (number of digits)
puts rand.round(3)

#if you want to generate a random number between zero and something we must put between parentheses followed by rand ()
puts rand(800)

#if you want to generate a floating number between zero and something we must multiply
puts rand * 300

#to generate a random number between two numbers we use double point
puts rand(24..50)

#If you want to consult information about any command, you can do it through the system terminal by putting "ri" followed by the command to be consulted, example: ri String, example 2: ri String.upcase
#==========================================================Reviw of blocks
#The blocks can be generated with the word times followed by two braces or the words do, end
#to generate a counter within the cycle it is done at the beginning with vertical bars, always starts at zero
3.times { |num| puts "Hello there, the number is #{num}"}
puts

5.times do |num|
  square = num * num
  puts "Hello there, the result is: #{square}"
end
puts

#=====================================================The each method
#This method performs iterations in an array to go through it with each followed by braces or do, end, like the previous method, a variable is generated between vertical bars that will be the elements of the array

candies = ["sour patch", "Milky way", "Airheads"]

candies.each do |candy|
  puts "i love eating #{candy}"
  puts "It tasted so good"
end
puts

names = ["bo", "moe", "joe"]

names.each { |name| puts name.upcase }
puts

#works the same for each type of array, (string, number, ...)
number = [1, 2, 3, 4, 5, 6]

number.each do |num|
  square = num * num
  puts "The square of #{num} is #{square}"
end

#the variables that are created within each cycle are local variables so if we try to print these we will have an error since the variable outside the cycle does not actually exist
#puts square
puts

#====================================================More practice with the each method
#you can use methods for iterations of each array
fives = [5, 10 ,15, 20, 25, 30, 35, 40]
evens = []
odds = []

fives.each do |number|
  if number.odd?
    puts number
  end
end
puts

#Remember that with the ternary operator this comparison can be made in fewer lines of code, in addition each also works with the keys
fives.each { |number| number.even? ? evens << number : odds << number }

p evens
p odds
puts

#===============================================================each within each
#you can nest methods if you want to create a variety of possibilities between two arrays

shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A #{shirt} shirt and a #{tie} tie"
  end
end
puts

#=============================================================the for loop
#There is another way to go through an array and it is with the for method
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 15, 20, 40]

for num in numbers # the variable that is created to traverse the array unlike the previous method is a global variable
  puts num
end
puts

puts num
puts

#==============================================================the each_with_index method
#With the each_with_index method, we can know what iteration or in which position of the index of the matrix it is, this must be put inside the backslashes after the variable, this can be done for all types of matrix (String, Number,. ..)
colors = ["Red", "Blue", "Green", "Yellow"]

colors.each_with_index do |color, index|
  puts "Moving on index number #{index}"
  puts "The current color is #{color}"
end
puts

#==============================================================CHALLENGER the each_with_index method
#Exercise 1
numbers = [1, 2, 3, 4, 5]
num = 0

numbers.each_with_index do |number, i|
  num += number * i
  puts "The operation is #{number} * #{i} = #{number * i}"

end
puts
puts "Sum is: #{num}"
puts

#Exercise 2
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
#the map and collect methods are exactly the same
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
squares = []
numbers.each { |number| squares << number **2 }
p squares

#using map
#the map method what you do is assign the values to an array without having to create it beforehand and also without having to use a push or (<<), you just have to write within the loop what we want to be saved in the array
arrar = numbers.map { |number| number ** 2 }
p arrar
puts

#also like the other methods you can use do, end
temperature = [105, 32, 9, -34, 18]
celcius = temperature.map do |number|
  minus = number - 32
  minus *(5.0/9.0)
end
p celcius
puts
#direct operations can be performed

results = [1, 2, 3].map { |e| e ** 2  }
p results
puts

#Exercise
def cubes(arr)
  arr.map { |number| number ** 3 }
end

p cubes([3, 4, 5, 6, 7, 8])
puts

#====================================================iteration over Array with while or until loops
#one way to go through the array is using cycles or loops like while or until going through the index position
animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

i = 0
while i < animals.length
  puts animals[i]
  i += 1
end
puts

#using until
i = 0
until i > animals.length
  puts animals[i]
  i += 1
end
puts

#======================================================The break keyword
#you can stop a cycle with break

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

#All cycles can be terminated with break
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
#the next method is used whenever it is required to jump to the next element of the array
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
#the reverse method that was looked at previously also works in array and what it does is invert the values of the Array

numbers = [1, 2, 3, 4, 5]

p numbers.reverse

p numbers

#in this case the method only works to show if you want to change the original matrix you must increase the exclamation mark at the end of the method
numbers.reverse!
p numbers
puts

#====================================================the sort method on an Array
#This method is used to order a matrix, if the matrix is of numbers it will be ordered in ascending order, and if it is a string it will be ordered alphabetically

numbers = [5, 6, 13, -2, 8, -1]
words = ["Hello", "World", "apple", "zebra", "lemon"]

p numbers.sort
p words.sort #It should be taken into account that when ordering a string, it is ordered alphabetically and starting with capital letters
p numbers
puts

#Like the previous method, if we want to modify the original array, the exclamation mark is used
numbers.sort!
p numbers
puts

#======================================================The concat method on an array
#concatenating two matrices is easy just with the + sign or the word concat

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
#These methods are used to show the maximum and minimum value of an array

c = [1, 2, 3, 4, 5, 6, 89, 1, 2, 6, 23]

p c.max
p c.min

#They also work for an array of String
d = ["apple", "kiwi", "banana", "watermelon"]

p d.max
p d.min
puts

#######################

def custom_max(arr)
  arr.sort[-1]#sort the array and return the last value of the array
end

def custom_min(arr)
  arr.sort[0]
end

p custom_max([1, 6, 8, 5, 3, 1])
p custom_min([1, 6, 8, 5, 3, 1])
puts

#another way to get the biggest

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
#the include method in this case for matrices looks for if the value we input is in some m + position of the array

fruits = ["Apple", "Banana", "Kiwi", "melon"]

p fruits.include?("Apple")

#=========================================================The index and find index methods on an Array
#the two methods are exactly the same which return the index or position of the searched element

colors = ["Red", "Green", "Blue", "Red"]

p colors.find_index("Green")
p colors.index("Red") #It must be taken into account that if the value is repeated, it will return the first position where it is found
puts

#=====================================================The select method
#this method selects the values according to a criterion or a condition
grades = [80, 95, 13, 76, 28, 39]

matches = grades.select do |number|
  #number >= 75
  number.even?
end

p matches
puts

#======================================================the reject method
#this method returns a new array that rejects all elements of a block to be evaluated, which is the opposite of select

animals = ["cheetah", "cat", "Lion", "elephant", "dog", "cow"]

select_results = animals.select { |animal| animal.include?("c")}
reject_results = animals.reject { |animal| animal.include?("c")}

p select_results
p reject_results
puts

#====================================================Unpack a multidimensional Array
#in this case we have a multidimensional array that each position or index is a new array
user = [["Bob", 25, "Male"], ["Susan", 48, "Female"], ["Luis", 23, "Male"]]

#You can show the complete content of the position that is an array or each element by putting other brackets followed by the previous ones indicating the index of the second matrix
p user[1][2]

#each content of the array can be assigned to a variable
bob, susan, larry = user
p bob
puts

#===============================================The partition method
#this method separates the original array in two, depending on the condition, putting the required array on the left and the rest of the array on the right

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

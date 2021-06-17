#==================================================Introduction to arrays
#to define a matrix the square brackets [] are used
p [].class
number = []
puts

#we can store the values separated by a comma
number = [1, 2, 5, 7, 9, 12, 34]
p number

words = ["hello", "name", "toys"]
p words

#The array can contain any type of data at the same time and even duplicate values
words = ["hello", 8, true, 9 ,"finish", 8]
p words
#If we want to store data that will always be filled as name, age, gender, we can create a multidimensional array with other brackets [[], []]

student = [
  ["Anndony", 23, "Male"],
  ["Daniela", 22, "feminine"],
  ["Jose", 21] # the matrix must not be the same size
]
puts student
puts

#=================================================Shorthand Syntax to create an array of string
#If you want to create an array of strings, it is much easier to separate the values with spaces than with commas.
words = %W[Anndony Jose Carlos Maria Camila]#It must be taken into account that the delimiter is the space, so if we write a name that contains spaces, there will be two elements of the matrix such as: Anne Maria
p words
puts

#==================================================cerate an array with array new method
words = ["hello", "world"]
#Using the new method, it must be Array.new, the a is always uppercase and we can put arguments followed to specify the size of the array between parentheses ()
p Array.new(5)

#a specific value can be assigned for the entire array
p Array.new(5, "hello")

#to make a multidimensional array
p Array.new(5, Array.new(3))
puts

#=================================================Access Single Element by index position
#the indices of the matrices start at zero, the first element has the index zero, the second one has the index 1 and so on
fruit = ["Apple", "Orange", "Grape", "Banana"]

p fruit[0]

#If we want to show the last value of the array but we don't know how many elements the array has, we can do it with (length-1)

p fruit[fruit.length-1]

#There is an easier way to do it with just putting negative numbers, taking into account that the value (-1) is the last value of the array
p fruit[-1]

#but all of that is an abbreviation of a method actually []. ()
p fruit.[](3)
puts

#===============================================the fetch method
name = ["Anndony", "Juan", "Maria"]
#Another way to show the elements is by means of fetch (), but you must be careful about the index you are looking for because if it does not exist it will give us an error
p name[2]
p name.fetch(2)

#for this case then we must add that we want it to show us if the index does not exist by putting it inside the parenthesis separated by a comma
p name.fetch(3, nil)
p name.fetch(3, "Unknown")
p name.fetch(3, ["hello", "world"])
puts

#============================================== Acces sequential array elements with bracket Syntax
#We can extract several elements at the same time using the same brackets as before, but this time putting from the beginning of the index and how many values do you want to obtain
number = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p number[2, 3]

#If you try to obtain more values than you have, it will only show up to the last value without nil for the other indices that do not exist
p number[2, 100]
puts

#============================================= Acess sequential array elements with a range object
#You can show the amount of values depending on a range which is expressed with double points inside the brackets []
numbers = [1, 3, 6, 8, 10, 12, 24, 36, 48]

p numbers[3..7]

#you can exclude the last value as seen above with triple point inside the brackets
p numbers[3...7]
puts

#=============================================== Access multiple array elements with the values_at
#The values_at method is another method to extract values from an array which works like the previous methods, but what this method does is show us all the values of the indices that we put inside the parentheses of the values_at method, regardless of the order in which We put them or if they are repeated and if we put a value that does not exist, it will return nil

names = ["Sonia", "Tommy", "Toby", "Juan"]

p names.values_at(2, 0, 3, 2, 2, 2, 89)
puts

#===================================================The slice method
#There is another method that is identical to using brackets to show the elements of an array, slice works the same way that brackets do, this method is just one of many to show elements of an array

number = [0, 2, 4, 6, 8, 12, 14]

puts number.slice(1)
puts number[1]
puts

#=================================================== Overwrite one or more array elements
#This method is used to mutate matrices which means that they can be changed or altered, in matrices this means that it can have added or eliminated values

fruits = ["Apple", "Orange", "Banana", "Melon"]
p fruits

#To change any value of the matrix, it is enough to put the index between brackets and with the same we can assign the new value

fruits[1] = "Watermelon"
p fruits

#In addition, a new value can be added to the matrix by putting the final position that is in nil and assigning the desired value
fruits[4] = "Raspberry"
p fruits

#It should be taken into account that if we use an index that is not the next one in the list, it will be filled with null values to reach the desired index
fruits[10] = "Raspberry"
p fruits

#if you want to modify more than one value we can resort to ranges or sequences
fruits[3, 2] = ["Kiwi", "Lemon"]
p fruits

fruits[3..6] = ["melon", "Strawberry", "kiwi", "pineapple"]
p fruits

#If a number of values is replaced and less is replaced, what will happen is that the missing values will be eliminated from the array
fruits[2..9] = ["melon", "Strawberry", "kiwi"]
p fruits
puts

#===============================================================the length and size methods
#these methods are used to show the size of an array
p [1, 2, 4, 5, 7, 9, 12, 45, 60].length
p [1, 2, 4, 5, 7, 9, 12, 45, 60].size

#If you want to count any element, you can do it with the count method and in parentheses the element that we know counts sometimes exists in the Array
p [1, 2, false, true, 4, 5, true, 2, 3,  2, 4, 2].count(true)

#===============================================================The empty? and nil? methods on an array
#These methods are used to validate if an array is empty and returns a Boolean value

p [].empty?
p [1, 2, 3, 4].empty?
puts

p [].nil? #this case returns false since this matrix is not equal to nil
p [1, 2, 3, 4].nil?
puts

#the nil method works when a variable or array has null values
letter = ("a".."j").to_a #Convertir a matriz
character = letter[25]
p character
p character.nil?

#=============================================================the first and last methods
#These methods are used to display the first elements or the last elements of the array

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p arr.first
p arr.first(1)#Although it seems the same, it must be taken into account that when using parentheses the result will be a matrix, while without the parentheses the result will be a real value

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
#this method what you do is push or store the value or values (separated by commas) that you want at the end of the array regardless of how many elements there are, it is always stored at the end

locations = ["House", "Airport", "Bar"]
p locations

locations.push("Restaurant", "Park")
p locations

#you can do this without the push method using the double minor signs
locations << "Restaurant" << "Saloon"
p locations

#You can insert a value in any index you want with insert and two arguments inside the parentheses of the method

locations.insert(1, "Restaurant", "Cafe", "Saloon")
p locations
puts

#============================================The Pop Method
#this method works by doing the opposite of the push method, it will remove the last value from the array

arr = [5, 7, 9, 11, 13, 15, 17, 21]
p arr

arr.pop
p arr
puts
#You can provide a value as an argument indicating the number of elements you want to remove

arr.pop(3)
p arr
puts

#===============================================The shift and unshift methods
#the shift method what it does is eliminate the first element of the array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr

arr.shift
p arr
puts

#we can add as argument the number of elements that we want to eliminate
arr.shift(2)
p arr

#The unshift method is used to add elements to the beginning of the array separated by commas
arr.unshift(1, 3, 1)
p arr
puts

#=============================================== Equality and inequality operators with arrays
#arrays can be compared like any other variable in ruby only with equal (==) or different (! =) operator
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b
p a == c
p a == d
puts

#===========================================The spaceship operator
#this operator (<=>) returns 4 possible returns (Negative, zero, one, nil)
#As long as the values on each side of the operator are equal, the return will be zero (0)
#As long as the value on the right is greater than the one on the left, the result will be (-1)
#as long as the value on the left is greater than the one on the right, the return will be (1)
#whenever you try to compare incompatible elements such as a number with a matrix, the result will be nil since ruby could not separate the matrix to perform the comparison

p 5 <=> 5

p 5 <=> 10

p 5 <=> 3

p 5 <=> [1, 2, 3]
puts

#==========================================Convert Range to array
#to convert an object of type range to matrix use the (.to_a)

letter = "A".."t"
p letter

letter_array = letter.to_a
p letter_array
puts

#works for any type of data array
numbers = 1..120
p numbers

numbers_array = numbers.to_a
p numbers_array[1..30]
puts

#=============================================The is_a? Method
#This method (is_a?) is a Boolean method to know what kind of object is being analyzed
#the operation of this method is simple because you only have to put is_a? followed by parentheses where the class you want to verify will always start with a capital letter (Class)
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
#There is a hierarchy in the objects (BasicObject, Object, (Integer, Array, Float, ...))

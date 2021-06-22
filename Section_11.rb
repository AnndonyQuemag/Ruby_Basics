#=============================================Object_pointers and object copies
#we can see the position of the objects in the computer's memory with the object_id method, it must be taken into account that the values will be different in each computer
a = [1, 2, 3]
b = [1, 2, 3]

p a.object_id
p b.object_id
puts

#each object has a different position unless it points to the same element
b = a

p a.object_id
p b.object_id
puts

#If we use dup to create an identified object and assign it to a variable this would be a new object and therefore its position will be different in the two variables
b = a.dup
p a.object_id
p b.object_id
puts

#============================================Splat Arguments
# This method is used when the number of elements of an argument is unknown, it is represented by the asterisk
def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

p sum(10, 10, 11)
puts

#==========================================the any? and all? methods
#These are boolean methods of arrays which return true whenever the given condition is met
#the method any? returns true if at least one element of the array meets the condition
p [1, 3, 5, 7, 2, 4, 6, 8].any? do |number|
  number.even?
end
puts

#the method all? returns true if all the elements of the array meet the condition
p [1, 3, 5, 8].all? { |n| n.even? }
puts

#=========================================the find and detect methods
#These methods are used to search the matrix depending on the given condition and return the first value that meets this

words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.detect { |word| word.length > 8}
p words.find { |word| word.length > 8}
puts

numbers = [4, 8, 15, 16, 23, 42]

result = numbers.find do |number|
  number.odd?
end

p result
puts

#============================================the uniq method on an array
#this method returns the values eliminating those that are duplicated
numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]

p numbers.uniq
puts

#to modify the original matrix the exclamation mark is used
#numbers.uniq!
p numbers
puts

# exercise
def custom_uniq(array)
  final = []
  array.each { |elem| final << elem if !final.include?(elem) }
  final
end

p custom_uniq(numbers)
puts

#===========================================the compact method
#this method removes all nil values from the array
p [1, nil, 2, 3, nil].compact
puts

#exercise
def custom_compact(array)
  final = []
  array.each { |element| final << element if !element.nil? }
  final
end

p custom_compact([1, nil, 2, nil])
puts

#=======================================the inject and reduce methods on an array
#They are exactly the same methods, what they do is take the previous value of the array and add it to the current one, it is a loop that contains the previous value and the current
# You must indicate the starting value in the parentheses after the reduce or inject, in addition you must indicate the operation that is going to be stored in the previous variable (previous + current)
a = [10, 20, 30, 40]

result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "the current values is #{current}"
  previous + current
end

puts result
puts

#The same thing happens with inject
result = [10, 20, 30, 40].inject(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "the current values is #{current}"
  previous + current
end

puts result
puts

#===================================================The flattemn method on an array
#this method returns a one-dimensional array from a multi-dimensional

registrations = [
  ["bob", "Dan", "Jack"],
  ["Rick", "Susan", "Molly"],
  ["Pierce", "Sean", "George"]
]

p registrations.flatten
puts

#to replace the original array the exclamation mark is used
registrations.flatten!
p registrations
puts

#==================================================the zip method on an array
#this method joins arrays based on the position of the common or shared index, creating a multidimensional array
names = ["Bob", "Moe", "Joe"]
registrations = [true, false, false]

p names.zip(registrations)
puts

p [1, 2, 3].zip([4, 5, 6], ["A", "B", "C"])
puts

#exercise
def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end

p custom_zip(names, registrations)
puts

#================================================the sample method
#This method allows you to extract elements from the matrix randomly, in addition you can use parentheses to indicate how many values you want to obtain
flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]

puts flavors.sample(2)
puts

#===============================================Multiply an array with an asterisk
#the asterisk works to operate numbers and strings, it can also be used for arrays
puts 1 * 2

puts "Anndony" * 4

p [1, 2, 3] * 4
p ["A","b","c"] * 4

#exercise

def custom_multiply(array, number = 1)
  final = []
  number.times do
    array.each do |elem|
      final << elem
    end
  end
  final
end

p custom_multiply([1, 2, 3, 4], 4)
puts

#==================================================Array union combine array and exclude duplicates
#if you want to join two or more matrices and eliminate duplicates, use a backslash

p [1, 2, 3] | [3, 4, 5, 4, 3]
puts

#exercise
a = [1, 1, 2, 3, 3]
b = [3, 4, 4, 5]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p a | b
p custom_union(a, b)
puts

#=================================================remove array items that exist in another Array
#with the minus sign (-) you can remove elements that exist in an array

p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5].- [2, 3]
p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] - [2, 3, 4]
puts

#exercise
def custom_substraction(arr1, arr2)
  final = []
  arr1.each { |value| final << value if !arr2.include?(value) }
  final
end

p custom_substraction(a, b)
puts

#=============================================array intersection with the ampersand symbol
#this method takes all equal elements in the arrays that are compared using the ampersand symbol (&)

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9]
puts

#exercise
a1 = [1, 1, 2, 3, 4, 5]
a2 = [1, 4, 5, 8, 9]
def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each do |num|
    final << num if arr2.include?(num)
  end
  final
end

p custom_intersection(a1, a2)

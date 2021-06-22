#================================intro to numbers
#.class shows the type of variable in this case integer and floatat
p 5.class
p 6.class
p 0.class
p 200.class
p -123.class
p 999999999999999999999999999999999999999999999999999999999999.class
puts

p 4.31.class
p 7.4235.class
p 9.8.class
puts

#===========================================Convert string to numbers
str = "5"
num = 54
float = 3.54

p str
p str.class
puts

#conversion to integer
p str.to_i
p str.to_i.class
puts

#conversion to float
p str.to_f
p str.to_f.class
puts

p num
p num.class
puts

#conversion to String
p num.to_s
p num.to_s.class
puts

#conversion to float
p num.to_f
p num.to_f.class
puts

p float
p float.class
puts

p float.to_i
p float.to_i.class #conversion to integer
puts

p float.to_s
p float.to_s.class #conversion to string
puts

#=============================================Booleans
p 5 > 4 && 6 > 5 #returns a boolean value
p 4 > 5 #returns a boolean value
puts

truee = true
falsee = false

p truee.class
p falsee.class
puts

#============================================ the odd? and even?
p 1.next
p 1.to_s
puts

p "the number 10 is even? " + 10.even?.to_s # even number (even)
p "Is the number 11 even? " + 11.even?.to_s #odd number (odd)
p "Is the number 2,345 even? " + 2.345.to_i.even?.to_s
puts
#============================================ comparison with the equality
if 10 == 10
  p "They are equal"
else
  p "They are different"
end

puts

a = 10
b = 10

p a == b
puts

p "5" == 5
puts

p "5" == "5"
puts

p 5 == 5.0 #in this case 5 and 5.0 are equal
p 5 == 5.2
puts

#============================================ comparison with the inequality
if 11 != 10
  p "They are different"
else
  p "They are equal"
end
puts

p "hellow" != "HELLOW"
puts

p "hellow" != "HELLOW".downcase
puts

#=========================================== LESS THAT AND greater than operators
if -11 >= 10
  p "is older"
else
  p "is minor"
end
puts
p 9 <= 90
puts

#=========================================== Arithmetic_methods
p 1 + 2 + 3 + 4 + 5 + 3 ** 4
puts

p 1.next()
puts

p (1.9 + (2 + 4)) * 3
puts

#=========different writing same result
p 10 - 5
p 10.-5
p 10.-(5)
puts

#=========
p 3 * 4
p 3. * 4
p 3. * (4)
puts

#=========
p 8 / 2
p 8. / 2
p 8. div (2)#for division you can use the symbol / or div
puts

#=========
p 8 % 3
p 8. % 3
p 8. modulo (3)# for the module you can use the symbol% or module
puts

#============================================== object methods with parameters
p 20.between?(10, 30) #20 is between (between) 10 and 30
puts

p 20.between?(21, 28) #20 is not between (between) 21 and 28
puts

#============================================== float methods
p 10.9.to_i
puts

p 10.9.floor #similar to to_i
puts

p 10.1.ceil #approximates the next number
puts

p 10.5.round # approximates the number according to the decimals
puts

p 10.51263.round(3) #Displays number with the number of the decimal shown in the parentheses, approximating the last digit
puts

p -234.abs #convert negative numbers to positive
puts

#===============================================assignment and ressignment
a = 10
p "a: #{a}"
puts

a = a + 5 # 10 was assigned which was the value of a plus 5 to the same variable a
p "a: #{a} with assignment"
puts

a += 5 # the value that contains plus 5 is assigned
p "a: #{a} short method"
puts

# the same assignment can be done with all operators
a -= 5
p "a: #{a} short method with subtraction"
puts

a *= 2
p "a: #{a} short method with multiplication"
puts

a /= 2
p "a: #{a} short method with division"
puts

a **= 2
p "a: #{a} short method with power"
puts

#===============================================Introduccion a Bloques
10.times{puts "Anndony is awesome!"} #It can be used in two ways with calls or with the words do, end.
puts

#it is recommended to use do, end for blocks and {} for a single line
3.times do
 puts "Anndony is  incredible"
 puts "I'm very happy"
end
puts

#vertical bars are used to create a temporary variable in the block that can be used as a counter
3.times do |cont|
 puts "Anndony is  incredible"
 puts "I'm very happy"
 puts "iteration #{cont+1}"
end
puts

#the same can be done ṕfor the {}
5.times{|i| puts "The number is: #{(i+1)*3}"}
puts

#=======================================the upto and downto
5.downto(1){|i| puts "Countdown: #{i}"} # counts down from the indicated number (5) to the number within the parentheses (1)
puts

#the same process can be done with do, end
5.downto(1) do |cont|
 puts "Anndony is  incredible"
 puts "I'm very happy"
 puts "iteration #{cont}"
end
puts

#test with upto
5.upto(10){|i| puts "Countdown: #{i}"}# performs a progressive count from the number indicated (5) to the number within the parentheses (10)
puts

5.upto(10) do |cont|
  puts "This is a test"

  puts "iteration #{cont}"
end
puts

#============================================= the step method
0.step(100, 5){|i| puts "Iteration: : #{i}"} # It is similar to the previous methods but you can specify how much the jump will be made in each iteration begins with the number that we put (0), and goes to the first number within the parentheses (100, 5) the second number indicates the jump
puts
rr
0.step(10) do |cont|#if the second step value is not put inside the parentheses, step 1 is taken by default
  puts "iteration #{cont}"
end

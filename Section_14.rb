#=======================intro to blocks
#a block is a collection of code that will be executed, a block is not an object
#a block cannot exist without a corresponding method, these are defined with braces or with words do, end
#a method is defined when you want to repeat a certain operation several times
evens = [2, 4, 6, 8, 10]

evens.each { |number| puts number ** 3 }
puts

colors = ["Red", "Purple", "Green", "BLue"]
statements = colors.map { |color| "#{color} is a great color" }

puts statements
puts

# you must specify the number of times this will be executed
5.times do |index|
  puts index
  puts "Let's move on to the next loop"
end
puts
#=============================================the yield keyword
#this keyword can be used inside a method, it transfers control of the method to the block that is attached to the method call
def pass_control
  puts "This is inside the method!"
  yield# is sending the control to the method therefore what is between braces in the call will come out at the point where it is called
  puts "Now I'm back inside the method"
end

pass_control { puts "Now! I'm inside the block!"}
puts

#we can send a value as if it were a parameter
def who_am_i
  adjetive = yield
  puts "I am very #{adjetive}"
end

who_am_i { "happy" }
puts

#=================================================procs_i
#a procs is an object that works exactly like a saved block
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map { |num| num**3 }
b_cubes = b.map { |num| num**3 }
c_cubes = c.map { |num| num**3 }

p a_cubes
p b_cubes
p c_cubes
puts

#define a proc with the Proc.new statement
cubes = Proc.new { |number| number ** 3 }

# in this case to execute the process you must use parentheses with the ampersan sign
#a_cube = a.map(&cubes)
#b_cube = b.map(&cubes)
#c_cube = c.map(&cubes)

# in a shorter way
a_cube, b_cube, c_cube = [a, b, c].map { |array| array.map(&cubes) }

p a_cube
p b_cube
p c_cube
puts

############################
ages = [10, 60, 30, 92, 43, 30]

is_old = Proc.new do |age|
  age > 60
end

p ages.select(&is_old)
p ages.reject(&is_old)
puts

#====================================the blovk given? method
#this is a block given a boolean method

def pass_control_on_condition
  puts "Inside method"
  if block_given? #this if checks if a block was sent to execute the yield in this case
    yield
  end
  puts "Back inside the method"
end

pass_control_on_condition
puts

#=======================================Yielding with arguments
# can be sent to a method parameters and blocks
def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Anndony") { |name| puts "#{name} is brillant" }
speak_the_truth("Daniela") { |name| puts "#{name} is incredible" }
puts

def number_evaliation(num1, num2, num3)
  puts "inside the method"
  yield(num1, num2, num3)
end

product = number_evaliation(5, 10, 15) { |num1, num2, num3| num1 * num2 * num3 }
p product
puts

sum = number_evaliation(5, 10, 15) { |num1, num2, num3| num1 + num2 + num3 }
p sum
puts

#========================================A custom each method
#the purpose of this keyword is to transfer control to a block
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Anndony", "Daniela", "Melissa"]
numbers = [10, 20, 30]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end
puts

custom_each(numbers) do |number|
  puts "The square of #{number} is #{number ** 2}"
end
puts

#===================================Procs II
#a procs can be passed as an argument to a method even if the method does not include any arguments

def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase)
puts

# you can call a procs with call
hi = Proc.new { puts "hi There" }
hi.call
puts

#=====================================pass a ruby method as proc
# you can pass a ruby ​​method as a process for this you must put (& :)
p ["1", "2", "3"].map { |number| number.to_i }
p ["1", "2", "3"].map(&:to_i)
puts

p [1, 2, 3, 4, 5].select{ |number| number.even? }
p [1, 2, 3, 4, 5].select(&:even?)
puts

#=====================================methods with proc parameters
#define a method to include a lookahead process as a parameter

# the parameter of a process has an ampersan before
def talk_about(name, &myprc)
  puts "Let me tell you about #{name}."
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius"
  puts "#{name} is a jolly good fellow"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt"
  puts "I can't stand #{name}"
end

talk_about("Anndony", &good_things)
puts

talk_about("Anndony", &bad_things)
puts

#=============================================Intro to lambdas
#this is an anonymous or unnamed method, they are practically identical to the procs
square_procs = Proc.new { |number| number ** 2 }
p [1, 2, 3].map(&square_procs)
p square_procs.call(5)
puts

#the same process with lambda
square_lambda = lambda { |number| number ** 2 }
p [1, 2, 3].map(&square_lambda)
p square_lambda.call(5)
puts

#one of the differences between lambda and procs is that lambda expects the arguments and if these are not provided it generates an error while procs if it has no arguments takes nil values
some_proc = Proc.new { |name, age| "Your name is #{name}, and your age is #{age}"}

p some_proc.call("Anndony", 25)
p some_proc.call("Anndony")
puts

some_lambda = lambda { |name, age| "Your name is #{name}, and your age is #{age}!!!!"}
p some_lambda.call("Anndony", 25)
#p some_lambda.call("Anndony") #this generates an error since it does not have the age value requested by lambda
puts

#the other difference is that lambda returns values ​​with the methods
def diet
  status = lambda { return "You gave in" }
  status.call
  "you completed the diet"
end
result = diet
p result
puts

#co procs returns call values
def diet1
  status = Proc.new { return "You gave in" }
  status.call
  "you completed the diet"
end
result1 = diet1
p result1

#========================================Lambda efficiency example
def convert_to_euros(dollars)
  if dollars.is_a?(Numeric)
    dollars * 0.95
  end
end

def convert_to_pesos(dollars)
  if dollars.is_a?(Numeric)
    dollars * 20.67
  end
end

def convert_to_rupees(dollars)
  if dollars.is_a?(Numeric)
    dollars * 68.13
  end
end

p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)
puts

####################
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(1000, "euros") { |dollars| dollars * 0.95 }
p convert(1000, "pesos") { |dollars| dollars * 20.67 }
p convert(1000, "rupees") { |dollars| dollars * 68.13 }
puts

#if you want to do it with lambda
to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.67 }
to_rupees = lambda { |dollars| dollars * 68.13 }

def convert_lambda(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert_lambda(1000, to_euros)
p convert_lambda(1000, to_pesos)
p convert_lambda(1000, to_rupees)
puts

p [1000, 2000, 3000].map(&to_pesos)

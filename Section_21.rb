#=====================================Review of inheritance
#classes have inheritance, this makes a class obtain all the methods of another class thus avoiding duplicate code
#the class it inherits from is called superclass
#a subclass is a type of superclass, a subclass must always be a type of the superclass it inherits from. this is a fragment of the superclass
#the syntax of a subclass is followed by a minor symbol (<) after the name
#=====================================Create Subclasses
class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi my name is #{name} and I am #{age} years old"
  end

end

anndony = Employee.new("Anndony", 23)
puts anndony.introduce
puts

class Manager < Employee # in this case manager inherits everything from Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)  # inherits or gets the superclass name and age values
    @rank = rank
  end

  #===================Exclusive instance methods in Subclasses
  def yell
    "Who's the boss? I'm the boss!"
  end
  #===================
  def introduce
    #"My name is #{name} and I'm manager! Woo-hoo!"
    result = super
    result += " I'm #{rank}"
  end
end

class Worker < Employee
  #===================Exclusive instance methods in Subclasses
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm Working"
  end
end

bob = Manager.new("Bob", 34, "test")
puts bob.introduce

dan = Worker.new("Daniel", 26)
puts dan.introduce
puts

#====================================check inheritanc hierarchy
#can be checked by means of ancestor to the classes and superclass of each one
p Manager.ancestors
p Manager.superclass
puts

p Employee.ancestors
p Employee.superclass
puts

#===================================the is_a? and instance_of? methods
#there is an instance of methods that can be called on an object and operate a little differently but are designed to achieve the same result

bobs = Manager.new("Bob", 34, "test")
dans = Worker.new("Daniel", 26)

#the method is_a? returns true if the object belongs to the class or superclass being searched for
puts bobs.is_a?(Manager)
puts bobs.is_a?(Employee)
puts

#The instance_of? returns true only when the class is evaluated, and false with any other even if it is a superclass
puts dans.instance_of?(Worker)
puts dans.instance_of?(Employee)
puts

#==================================Exclusive instance methods in Subclasses
#subclasses can contain unique instance variables and instance methods while still inheriting functionality from their superclass

p bob.introduce
p dan.introduce
puts

p bob.yell
p dan.yell
p dan.clock_in("8:30 AM")
puts

#=================================Override methods in a Subclasses
# for a method of the superclass to show something else in a specific subclass it is necessary to create a method in the subclass with the same name and add it
p bob.introduce
p dan.introduce
puts

#=================================Super Keyword I
# These super keywords help to customize the layout of the subclass while keeping some of the functionality of the superclass while still adding
sally = Manager.new("Sally", 42, "Senior Vice President")

p sally.rank
p sally.name
p sally.age

p sally.introduce
puts

#=================================the super Keyword II
#there are three ways to call the super word,
# 1. call her without parentheses
# 2. call it with parentheses but no arguments
# 3. call it with parentheses and with arguments

class Car

  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room Room"
  end
end

class Firetruck < Car

  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    #super + " Beep Beep. I'm driving at #{speed} miles per hour"
    #super() + " Beep Beep. I'm driving at #{speed} miles per hour"
  end
end

ft = Firetruck.new("Ford", 45)
p ft.maker
puts ft.sirens
puts

#==============================Class variables across Subclasses
class Product

  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamahig < Product
  @@thingamahig_counter = 0

  def self.counter
    @@thingamahig_counter
  end
  def initialize
    super
    @@thingamahig_counter += 1
  end
end

a = Widget.new
b = Widget.new

p Widget.counter
p Product.counter
puts

c = Thingamahig.new
d = Thingamahig.new
e = Thingamahig.new

puts Thingamahig.counter
puts Product.counter
puts

#===============================singleton classes and singleton methods
# these methods only exist in a single instance of an object
class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end
end

bob = Player.new
anndo = Player.new

p bob.play_game
p anndo.play_game
puts

def anndo.play_game
  "Winner"
end

p anndo.play_game
puts

p anndo.singleton_methods
p bob.singleton_methods
puts

p anndo.singleton_class
p bob.singleton_class
puts

#============================hash as inicialize arguments I
#there is a very common design strategy in classes, when doing the initialization method expect to receive a hash instead of a sequential pair of arguments
class Candidate

  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  #def initialize(name, age, occupation, hobby, birthplace)
  def initialize(name, details = {})
    default = {age: 25, occupation: "Canditatte", hobby: "Running for office", birthplace: "Kentucky"}
    default.merge!(details)

    @name = name
    @age = default[:age]
    @occupation = default[:occupation]
    @hobby = default[:hobby]
    @birthplace = default[:birthplace]
  end
end

info = {age: 53, occupation: "fishing", hobby: "Banker", birthplace: "Kentucky"}

senator = Candidate.new("Mr. Smith", info)

p senator.occupation
p senator.hobby
p senator.name
puts

#============================hash as inicialize arguments II
#if for some reason the user forgets to send a parameter, it can be defined in creation as the default parameter
info = {age: 53, occupation: "fishing", hobby: "Banker", birthplace: "Kentucky"}

#senator = Candidate.new("Mr. Smith")
senator = Candidate.new("Mr. Smith",age: 53, occupation: "fishing")

p senator.occupation
p senator.hobby
p senator.age
puts

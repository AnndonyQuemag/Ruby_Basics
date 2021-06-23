#=================================Intro to classes
# custom classes can be created, these are plans or templates to create objects
#the methods use attributes which are characteristics or a detail about what it is about
#a class is like a factory and designates a general shape for an object, and each object in its own instance is created from that plane

#==================================review of the class method on ruby objects
#each ruby ​​object is built from a different class
puts 5.class
puts 5.class == 8.class
puts 3.4.class
puts "test".class
puts

#==================================the superclasses  and ancestors methods on objects
# within the classes there is a method called superclasses, this returns above the classes that it has inherited
#the superclass that inherits from the class that inherits from a superclass is called subclass
#there is another method inside the classes called ancestors, which describes everything the class does
p 5.class
p 5.class.superclass
p Integer.superclass.superclass
p Integer.superclass.superclass.superclass
puts

p 5.class.ancestors#returns an array with the superclasses

puts

#===================================the methods_method
#the method of methods is available on all ruby ​​objects, this returns an array of all available objects
integer_methods = 5.methods.sort #alphabetical order
float_methods = 3.14.methods.sort

p integer_methods - float_methods
p float_methods - integer_methods
puts

#==================================create a class
=begin
class Gadget # the name of the class must follow the nomenclature of starting with a capital letter

end

#puts Gadget.superclass

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone.class
puts laptop.class
puts microwave.class
puts

p phone.methods.sort
p phone.nil?
puts
=end
#======================================object aliases
=begin
shiny = Gadget.new
flashy = Gadget.new

glossy = shiny #points to the same object

p shiny.object_id
p flashy.object_id
puts

p shiny.object_id == glossy.object_id
puts
=end
#==================================Instance variables and .initialize method
#how to use instance variables and initialize them in classes
#instanced variables start with the @ symbol
#the initialize method will be called immediately when an object is instantiated from a class with the new method
class Gadget
  #=====================================shortcut accesssor method

  attr_accessor :username #the accessor method creates a read method as a correct method a catcher and a setter for whatever
  attr_reader :production_number#, :username #the reader method creates a reading or training method
  attr_writer :password #the writer method creates a write method for a variable

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample} - #{rand(1..999)}"
  end

  #===================================Instance methods
  def to_s
    "Gadget: #{@production_number}, has the username: #{@username}.It is made from the #{self.class} class and it has the ID #{self.object_id}"
  end
  #===================================
  #===================================getter method

  def username
    @username
  end

  def production_number
    @production_number
  end
  #===================================
  #===================================setter methods
  def username= (new_username)
    @username = new_username
  end

  def password= (new_password)
    @password = new_password
  end

end

phone = Gadget.new
p phone
p phone.instance_variables
puts

laptop = Gadget.new
p laptop
p laptop.instance_variables
puts

#puts phone.info
puts

#=======================================Override to the to_s method
#It is possible to call a method with the same name as another already defined method
puts phone.to_s
puts

#=======================================the self keyword in a instance method
#this is about the auto keyboard of the word self which refers to the current object
#self within an instance refers to a specific object
Override = Gadget.new

p Override.to_s
puts

#=======================================getter methods
# class instance variables are protected so they cannot be accessed outside of this
#p phone.username
#to access these variables, methods are defined which can obtain the value of an instance variable and those are getter methods
p phone.username
p phone.production_number
puts

#========================================setter methods
#A set of methods are defined, and these are just another type of instance, the metoods setter will modify the state of an object
#phone.username= ("Anndony")
p phone.username
puts

#phone.password= ("bestpasswordever")
p phone
puts

#phone.password  = "topsecret" # this syntax is equivalent to .password = ("")
p phone
puts

#==========================================shortcut accesssor methods
#ruby provides a syntactic shortcut by which we can create reider methods, which are called accessor methods because they access any value
#starts with attr which is an attribute abbreviation used to describe an instance or characteristic variable

class Gatget
  attr_accessor :username #the accessor method creates a read method as a correct method a catcher and a setter for whatever
  attr_reader :production_number#, :username #the reader method creates a reading or training method
  attr_writer :password #the writer method creates a write method for a variable

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample} - #{rand(1..999)}"
  end

  #===================================Instance methods
  def to_s
    "Gadget: #{@production_number}, has the username: #{@username}.It is made from the #{self.class} class and it has the ID #{self.object_id}"
  end
end
=begin
smartphone = Gatget.new

p smartphone.username
smartphone.username = "secretagentman"
p smartphone.username
puts

smartphone.password = "blahblahblah"
p smartphone
puts
=end
#=======================================add parameters to inicitialize method
# custom instance variables can be provided
g1 = Gatget.new("Ruby", "programming")
p g1.username

g1.username = "RubyPro"
p g1.username

g2 = Gatget.new("misterprogrammer", "bestpassword")
g3 = Gatget.new("sportsfan", "topsecret")

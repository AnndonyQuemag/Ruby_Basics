#============================Private methods
#the private method does not allow a method to be called directly
require_relative "AppStore.rb"
class Gatget

  attr_accessor :username, :password#the accessor method creates a read method with a correct method a catcher and a setter for whatever
  attr_reader :production_number, :apps#, :username #the reader method creates a reading or training method
  #attr_writer :password #the writer method creates a write method for a variable

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget: #{@production_number}, has the username: #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  def reset(username, password)
    self.username = username # self is used so that ruby ​​takes the username value and does not create a new local variable
    self.password = password
    self.apps = []
  end

  def password= (new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

private

  attr_writer :apps

  def generate_production_number
    star_digits = rand(1000..99999)
    end_digits = rand(1000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample}
    "#{star_digits} - #{middle_digits} - #{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end

end

#the initialize method is a private method that can be defined directly when creating the object
phone = Gatget.new("user", "password")
#phone.initialize
p phone.production_number
#p phone.to_s

#p phone.generate_production_number
puts

#=================================protected methods
#protected methods are an intermediate between public and private methods
# these can only be called within the same object or method
class Car

  def initialize(age, miles)
    base_value = 20000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "Your car is worse"
  end

  protected

  def value
    @value
  end
end

civic = Car.new(3, 30000)
fiat = Car.new(1, 20000)

p civic.compare_car_with(fiat)
#p civic.value
puts

#=================================add validation to setter methods
# validations can be added to previously defined setter methods
phone = Gatget.new("Ruby", "Programming")
p phone.password

phone.password = 123
p phone.password
puts

phone.password = "computer"
p phone.password
puts

phone.password = "computer123"#as the condition is met, the password is changed
p phone.password
puts

#========================================prefer instance methodsto instance variables
#instance methods exist as well as instance variables but it is more recommended to use instance methods to variables
class BankAccount

  def initialize
    @amount = 5000
  end



  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private

  def amount #It is better to use this method because if it needs any modification it is only done here because if only the variable is used it must be modified in each place where it is found
    @amount / 100
  end

end

ba = BankAccount.new
p ba.status
puts

#========================================calling multiple setter methods  within one methods
#It is possible to create a method called reset that alters the object instance variables by calling several methods
puts
















#========================================struct
#a struct is like a smaller class that can only use instance variables
g = Gatget.new("Anndony", "password")
p g.apps
puts

g.install_app(:Chat)
g.install_app(:Twitter)
p g.apps
puts

g.delete_app(:Chat)
p g.apps
puts

#=================================================Monkey patching part I
#un monkey refers to the process of modifying or adding features to a predefined class or an existing class
#this means that it is possible to reopen a class and add new things
=begin
class Array
  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric) }
    total
  end
end

p [1, 2, "Hello", 3].sum
=end

class String
  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum =0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

puts "abc".alphabet_sum
puts "zzz".alphabet_sum
puts

#=================================== Monkey patching Part II
#mokey functionality can also be used in custom classes in addition to Ruby's own classes
class Hash
  def identify_duplicate_values
    values = []
    dupes = []

    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

scores = {a: 100, b: 100, c: 83, d: 50, e: 13, f: 6, g: 100, h: 13, i: 50, j: 80}

p scores.identify_duplicate_values
puts
=begin
class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now + 60.minutes
puts Time.now + 5.hours
puts Time.now + 5.days
=end

class Integer
  def custom_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end

5.custom_times { |i| puts i }
puts

#============================================Monkey patching Part III
class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end


end
goosebumps = Book.new("Night fo the living Dummt", "R.L. Stine", 99)
p goosebumps

class Book
  def read
    1.step(@pages, 10) { |page|  puts "Reading page #{page}..."}
    puts "Done! #{@title} was a great book!"
  end

end

animal = Book.new("Animal Farm", "George Orwell", 50)

puts animal.read
#====================================================Class Variables and class methods
#exist variables and class methods, these are only variables and methods that belong to an instance created from a class
# these are attributes or methods that will be sent to a class instead of an object that is created from that class
#a class variable solves the data duplication problem between instances
#It is possible to call a class object even if there is no instance or object
#the syntax of these is with double (@@), also the class methods have the prefix self
class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description
    "Hi there. I'm the blueprint for Bicycles!"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize  #this method is initialized whenever a new element of the class is defined (Bicycle.new)
    @@count += 1
  end
end

p Bicycle.description
p Bicycle.count
puts

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new
d = Bicycle.new
p a.maker

p Bicycle.count

#==============================intro to modules
# a module is a toolbox or a container for methods and concepts
# each module or container groups related functionalities that can be used throughout a program to help you be an effective programmer
# modules are not classes so it is not possible to create instances
# the first letter is uppercase
module LengthConversions
  WEBSITE = "https://www.youtube.com/"
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions::WEBSITE # to refer to a constant the new scope resolution operator is used, which is the double point (::)
puts

puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(200)
puts LengthConversions.miles_to_centimeters(300)
puts

#======================================squeare rectangle circle
module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(5)
puts Rectangle.area(10, 5)
puts Circle.area(5)
puts

#========================================require_relative, require methos
# a review will be made to require
#require "./rectangle.rb"
#require "./square"
require_relative "square"
#require "./circle"

puts Square.area(10)
#puts Rectangle.area(13, 9)
#puts Circle.area(7)
puts

#=======================================the math module
# there are also built-in methods to use in ruby
puts Math::PI

puts Math.sqrt(16)
puts Math.sin(90)
puts

#=======================================Mixins the comparable module
#this is like a module that is added to a class
class OlympicMedal
  #<, <=, >=, <=>, .between?
  include Comparable

  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 5)
gold = OlympicMedal.new("Gold", 5)

p bronze > silver
puts

#===================================Mixins part II
#this reduces code duplication in multiple classes
#a mixin is a module that injects additional behavior in a class, it allows to imitate the inheritance of more than one class
module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the Bookstore"
  end
end

class Supermarket
  include Purchaseable

  def purchase(item)
    "Thanks for visiting the Supermarketand buying #{item}"

  end
end

class CornerMart < Supermarket
  def purchase(item)
    "Yay! A great purchase of #{item} from your cornet mart!}"
  end
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")
puts

shoprite = Supermarket.new
p shoprite.purchase("Ice Cream")
puts

quickstop = CornerMart.new
p quickstop.purchase("Slim Jim")
puts

#====================================The ancestors method in depth
#If an include is defined within the class and also a metood is defined followed by it, it will only take the method to return
p Bookstore.ancestors
puts

bn = Bookstore.new
p bn.purchase("1984")
puts

p Supermarket.ancestors
puts

bs = Supermarket.new
p bs.purchase("1984")
puts

p CornerMart.ancestors
puts

bd = CornerMart.new
p bd.purchase("1984")
puts

#========================================The prepend Keyword
#this is a keyword works in a similar way to include, but puts the module method before the instance method that is defined in the class
#in other words, it reverses the order of precedence between the module's method and the method that is defined
p Bookstore.ancestors
bm = Bookstore.new
p bm.purchase("1984") # when using the prepend the value of the module will be taken
puts

#========================================the extend Keyword
# using extend in a class definition takes the modules, method and adds to the class methods and converts them into something that can be called the class itself
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end


#watson = Dog.new
#p watson.who_am_i

#the extendd method can be invoked in its own class not in class methods
p Dog.who_am_i
p Cat.who_am_i
puts

#===============================================Mixin part III
class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Jolly Ranchers")
bodega.add_snack("Slim Jims")

p bodega.snacks
p bodega.snacks[1]
puts

bodega.each { |snack| puts "#{snack} is delicious" }
puts
p bodega.map { |snack| snack.length > 10 }
puts

p bodega.map { |snack| snack.upcase }
puts

p bodega.select { |snack| snack.downcase.include?("j")}
p bodega.reject { |snack| snack.downcase.include?("j")}
puts

p bodega.sort
p bodega.first

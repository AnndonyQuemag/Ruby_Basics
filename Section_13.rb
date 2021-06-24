#================================Create hash with default value
#It is possible to create hash with default values.

fruits = {banana: 1.05}

p fruits[:orange]
puts

#the way to create a hash with default values ​​is different than normal, hash.new () is used, where in the parentheses the default value will be shown if something does not exist

fruits_prices = Hash.new("Not found")

fruits_prices[:banana] = 1.05
fruits_prices[:orange] = 0.45
fruits_prices[:kiwi] = 10.99

p fruits_prices[:grape]

# using the default method you can also define the default value for the hash
fruits_prices.default = "Whoops! That does't exist here"

p fruits_prices[:grape]
puts

#==================================================convert hash to array and vice versa
# to convert a hash to an array use to_a

spice_girls = {scary: "Melanie", sporty: "Issabel", baby: "Emma", ginger: "Geri"}

p spice_girls.to_a
p spice_girls.to_a.class

spice_array = spice_girls.to_a
puts

# to convert an array into a hash use to_h
p spice_array.to_h
p spice_array.to_h.class
puts

#====================================================The sort and sort_by methods on a hash
# these methods are used to sort a hash by creating an Array
#the sort method sorts alphabetically according to the key
pokemon = {squirtle: "Water", bulbasaur: "Grass", charizard: "Fire"}

p pokemon.sort
puts

#the sort_by method is a different method from sort since a loop with parameters is created to show the values
p pokemon.sort_by { |pokemon, type| type }
puts

#===================================================the key? and value?
# these methods are used to know if a key or a value exists in the hash

cars = {toyota: "camry", chevrolet: "aveo", ford: "F-150", kia: "soul"}

# the value must be provided inside parentheses and when carrying the question mark it is a Boolean method
puts cars.key?(:ford)
puts cars.key?("bmw")
puts

#if it is going to be compared with numerical values ​​these go without parentheses or it will return an error
puts cars.value?("soul")
puts cars.value? 3.34
puts

#====================================================hashes as method arguments
#a hash can be used as an argument to a method
def calculate_total(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calculate_total(24.99, 0.18, 0.07)
puts calculate_total(0.18, 0.07, 24.99)
puts

#this method works better since no matter the order in which they are defined, it will always be done in the same way
bill = {price: 24.99, tip: 0.18, tax: 0.07}

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

#You can send a hash directly in the parentheses with or without braces
puts calculate_total_2(bill)
puts calculate_total_2({price: 24.99, tip: 0.18, tax: 0.07})
puts calculate_total_2(price: 24.99, tip: 0.18, tax: 0.07)
puts

#=========================================================The delete method
#this method removes something from the hash object, removes the key-value
superheroes = {spiderman: "Peter Parker", superman: "Clark Kent", batman: "Bruce Wayne"}

p superheroes
puts

removed = superheroes.delete(:spiderman)# the key to delete must be specified
p superheroes
p removed
puts

#=========================================the select and reject methods on a Hash
# these methods extract or reject the hash values ​​depending on the given condition

recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

# like previous methods you need two parameters to go through, (key, value)
high = recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p high
puts

low = recipe.reject { |ingredient, teaspoons| teaspoons >= 5 }
p low
puts

#=========================================the merge method to conbine hashes
#this method merges two hashes, a hash is called and it only accepts one argument from another hash
market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 galons"}

# It should be taken into account that if a key is duplicated it will take the value of the hash that is merged, the one that is inside the parentheses
p market.merge(kitchen)
p kitchen.merge(market)
puts

#if you want to overwrite the original hash, use the exclamation mark
#market.merge!(kitchen)
#p market
#puts

###########################
def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each do |key, value|
    new_hash[key]= value
  end
  new_hash
end

p custom_merge(market, kitchen)
puts

#=================================================CHALLENGE word frecuency
sentence = "Once upon a time in a land far far away"
def word_cont(string)
  words = string.split(" ")
  count = Hash.new(0)

  words.each do |word|
    count[word] += 1
  end
  count
end

p word_cont(sentence)
puts

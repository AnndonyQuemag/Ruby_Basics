#===============================================Intro to hashes
#hashes are optimal for relationships between objects, creating a bridge between different objects, they connect unique identifiers called KEys to Values
# functions as a dictionary where with the kay you can access the values, these hashes can be whole numbers, floats, strings, matrices, ...
#indicators must be unique
#hashes that keys bind can be duplicated
#hashes are created with braces {} as opposed to arrays that are created with square brackets []
empy_hash = {}
empy_array = []

p empy_hash
p empy_hash.class
puts

p empy_array
p empy_array.class
puts

#===================================Create hash and extract Values from a Key
#creation of a hash with literal notation, this syntax is shortened to create an object
nfl_roster = {"Tom Brady" => "New England patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England patriots"}# a value is created with the equal sign followed by the minus sign

nba_roster = {"Cleveland Cavaliers" => ["LeBron James", "Levin Love", "Kyryw Ir"],
              "Golden State Warrios" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]}

#to extract the values you must put the value of key in square brackets

p nfl_roster["Tom Brady"]
p nfl_roster["Tony Romo"]
puts

p nba_roster["Cleveland Cavaliers"]
p nba_roster["Golden State Warrios"]
puts

#if you put a key that does not exist this will return a nill
p nba_roster["Anndony Quemag"]
puts

#===========================================Symbols as hash keys
#hashes can use an object called symbols, which are used instead of strings since they take up less memory, these are used with a points (:)

p :name.class
puts

#The two points can go to the beginning of the key also with the equal sign and the minus sign

person = {:name => "Anndony",
          :age => 23,
          :handsome => true,
          :lenguages => ["Ruby", "C++", "JavaScript"]}

p person[:name]
p person[:age]
p person[:handsome]
p person[:lenguages]
puts

#The two points can go at the end of each key are the equal or the lesser sign

person = {name: "Anndony",
          age: 23,
          handsome: true,
          lenguages: ["Ruby", "C++", "JavaScript"]}

p person[:name]
p person[:age]
p person[:handsome]
p person[:lenguages]
puts

#================================================Symbolsto string and vice versa
#You can convert a symbol to a string and a string to a symbol, this is simple because only to_a is used to convert to string and to_sym to convert to Symbols

p :age.to_s
puts

#reverse process
p "age".to_sym
puts

#===========================================The fetch method on a hash
#the method of retrieving a hash works similar to the method of searching an array
menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu[:chips]

p menu[:salad]#if you put a key value that does not exist we will have a nil
puts

#in this case with fetch you can define a value when what you are looking for does not exist
p menu.fetch(:burger, "Not Found")
p menu.fetch(:chips, "Not Found")
p menu.fetch(:salad, "Not Found")
puts

#================================================Add a key value pair to hash with bracket
#you can modify the hashes and also add new ones as well
menu = {burger: 3.99, taco: 5.98, chips: 0.50}

p menu[:sandwich] = 8.99 #if something does not exist you can assign a value with the equal sign and this value and the key will be assigned at the end of the hash
puts

p menu
puts

#In the same way, if something already exists in the hash and the equal is used with another value, this value of the key will be modified in the hash.
menu[:taco] = 2.33

p menu
puts

#Another method is used the store method with the key and value that you want to add or modify inside parentheses separating the parameters with commas
menu.store(:sushi, 24.99)
p menu
puts

menu.store(:taco, 3.44)
p menu
puts

#=================================================The length and empy methods
#These are length and empty methods the hash, in the case of empty it returns a boolean value if it is empty true, if it is not empty false
shopping = {bananas: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shopping = {}

p shopping.length
p shopping.empty?
puts

p vegan_shopping.length
p vegan_shopping.empty?
puts

#================================================the each method on a hash
#the each method works practically the same as in the arrays, this method goes through each pair of hash values
capitals = {alabama: "Montgomery", alaska: "Juneau", arizona: "Phenix", arkansas: "Little Rock"}

#This method works with two parameters, the first is the Key of the hash, the second is the value of the Key of the first parameter, it should be noted that if only one parameter is used, it will return an array with the key and the value
capitals.each do |state, capital|
  puts "Querying Hash ..."
  puts "The capital of #{state} is #{capital}!"
end
puts

#If only one parameter is taken, it can be put in brackets if you want to have the key or the value with 0, 1
capitals.each do |state|
  p state[1]
end
puts

#================================================the each_key and each_value methods
#are methods to iterate over the Key
salaries = {director: 1000000, producer: 2000000, ceo: 3000000}

#the method each_key works to show the Key of the hash
salaries.each_key do |position|
  puts "EMPLOYEE RECORD:----------"
  puts "#{position}"
end
puts

#each_value method works to display the value of each key from the hash
#salaries.each_value { |salary| puts "The next employe earns #{salary}"}

salaries.each_value do |salary|
  puts "The next employe earns #{salary}"
end
puts

############################
def get_keys_from_hash(hash)
  keys = []
  hash.each do |key, value|
    keys << key
  end
  keys
end

def get_values_from_hash(hash)
  values = []
  hash.each do |key, value|
    values << value
  end
  values
end

puts get_keys_from_hash(salaries)
puts

puts get_values_from_hash(salaries)
puts
#==============================================retrieve keys or values from hash as array
#these methods return the values and keys in an array
shopping_list = {bananas: 5, oranges:10, carrots: 3, crackers: 5}

p shopping_list.values
puts

p shopping_list.keys

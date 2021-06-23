#==================================read from a text file with ruby
#exist inputs and outputs in ruby, which serve as a collection of text to move forward
#this goes in the terminal
=begin
File.open("prueba_section_16.txt").each do |line|
  puts line
end
=end


#============================Write file
#you can write a text file directly from Ruby
File.open("./test.txt", "w+") do |file|
  file.puts "I'm Creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end

#==============================Rename and delete a file
#File.rename ("test.txt", "Something.txt")

#to be able to delete a file it must be in an if statement
if File.exist?("test.txt")
  File.delete("test.txt")
else
  puts "Not found"
end

#==================================Comands line arguiments in the terminal(ARGV)
ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end
puts

#==================================Start
#It is possible to load a file to ruby ​​in three different ways
puts "This is the beginning"
puts

load "end.rb"

puts "Alright, that was successful"
puts

load "./end.rb"

if 8 > 10
  load "end.rb"
end
puts

#=================================start
#does not load the same file more than once
# the path must be specified as it defaults to the ruby ​​installation path
puts "this is the beginning"
puts

require "./end"

require "./end"

require "./end"

require "./end"
puts

#the require_relative automatically looks for the file in the current directory where it is
puts "this is the beginning!!!!"
puts

require_relative "end"

require_relative "end"

require_relative "end"

require_relative "end"
puts

# to call a file that is not in the same folder you must put the exact path
require_relative "a/b/epilogue"
puts

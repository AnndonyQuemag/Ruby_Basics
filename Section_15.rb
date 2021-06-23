#===========================Intro to time objects
#this is a time object, like dates, specific moments of time
today =  Time.new

p today
p today.class
puts

last_may = Time.new(2015, 5, 23, 7, 30, 12)#el formato de este es año, mes, dia, horas, minutos, segundos
p last_may
puts

#==========================instance methods on a time object
#we can print specific time values ​​putting what to see at the output
today = Time.now

p today

p today.month
p today.day
p today.year

puts

p today.hour
p today.min
p today.sec
puts

p today.yday#this method shows the number of days of the year
puts

sometime = Time.new(2021, 06, 27)
p sometime.yday
p sometime.wday#this method returns the day of the week being 0 on Sunday and 6 on Saturday
puts

#========================predicate methods on time objects
#this method returns a boolean value
birthday = Time.new(1997, 9, 11)

p birthday.monday?
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?

puts

p birthday.dst?# this method dst? it's in summer time
puts

#==================================add or substract time by seconds
# You can add or subtract time from a time object using seconds only using the signs (+), (-)

start_of_year = Time.new(2016, 1, 1)
p start_of_year

p start_of_year + 60
p start_of_year - 240
p start_of_year + (60 * 60 * 24)
puts

##################
def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 *24
  until current_date.yday == number
    current_date += one_day
  end
  current_date
end


p find_day_of_year_by_number(24)
puts

#===============================the comparable methods on a time object
# in this case you will see the comparable methods that are available

birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

puts birthday >= Time.new(2016, 4, 12)#time comparisons must be exact both in date and in hours minutes and seconds
puts

#one of the ways to compare is using the between command
puts independence_day.between?(summer, winter)# returns true when the value is between the two given dates
puts

#=================================convert tmr to other objects
#you can convert an object of type time to other types of objects
someday = Time.new(2000, 2, 15)
p someday.yday
p someday.wday
p someday.mday# this method indicates the day of the month
puts

# to convert to a string you can use to_a, also you can use ctime which will return a string with a little more interpolation
puts someday.to_s
puts someday.ctime

# to convert to an array use to_a
p someday.to_a
puts

#================================convert time object to formatted string
#time object can be converted to string with custom form
# %b  abbreviated month name ("Jan")
# %B  Full month name ("January")
# %d  day of month (1..31)
# %j  Day of the year (1..366); so called "Julian date"
# %m  Month as a numebr (1..12)
# %w  Day of the week as a number (0..6)
# %x  Preferred representationfor date (no time)
# %y Two-digit year (no century)
# %Y four-digit year

today = Time.new

p today.strftime("%B - %d - %Y")
puts

#===============================Extend time object with require time
#you can take a string that has a conventional format and convert it to time
require 'time'#this line is always necessary
puts Time.parse("2021-03-01")
puts

#Additionally, these values ​​can be passed in a specific way
puts Time.parse("03-04-2021", "%m-%d-%Y")
puts Time.parse("03-04-2021", "%d-%m-%Y")

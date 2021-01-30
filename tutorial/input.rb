puts "enter your name: "

name = gets


puts "Hello #{name} the newline came with it"


name = gets.chomp  # this get ride of newline

puts "Hello #{name} the newline came with it"

# a better way to get a number
number = gets.chomp.to_f


res = puts "doesnt return anything"

res = p "this returns a string"


puts [1,2,3,4,5]

p [1,2,3,4,5]
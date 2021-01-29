puts "enter your name: "

name = gets


puts "Hello #{name} the newline came with it"


name = gets.chomp  # this get ride of newline

puts "Hello #{name} the newline came with it"

# a better way to get a number
number = gets.chomp.to_f
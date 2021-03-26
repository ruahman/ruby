require 'pry'

def print
  puts "this is the first line"
  puts "here is the second line"
  binding.pry
  puts "here is the third line"
end

# print

array = [1,2,3,4,5,6,7,8,9]

def multiply_array(array)
  new_array = array.map do |n|
    binding.pry
    n * 2
  end
  puts new_array
end

# multiply_array array

def map_array array
  binding.pry
  array.map do |item|
    if item == 3
      puts "Yay"
    else 
      # binding.pry
      puts "not found"
    end
  end
end 

map_array array

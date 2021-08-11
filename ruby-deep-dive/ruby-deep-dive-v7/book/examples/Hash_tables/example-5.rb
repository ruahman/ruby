
str   = "11011001"
count = Hash.new(0)

str.each_char { |c| count[c] += 1 }

puts count

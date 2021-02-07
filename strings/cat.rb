# this is faster
report = ""
report << "concatenating "
report << "strings "
report << "all day"

p report


foo = "My friend really likes dogs".gsub("dogs","cats")
p foo

p "a1 b2 c3".gsub(/\d+/){|number|number.next}

str="ABCD-123"

puts str.split("-")

# puts "Please type your name: "
# name = gets.chomp
# p name

p "hello there"[0..4]

"Ruby is fun".each_char{ |ch| puts ch }

p "ascii".chars.map(&:ord)
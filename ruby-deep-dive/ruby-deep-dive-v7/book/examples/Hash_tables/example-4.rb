
str   = "11011001"
count = {}

str.each_char do |c|
  if count.key?(c)
    count[c] += 1
  else
    count[c] = 1
  end
end

puts count

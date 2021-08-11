# require 'pry'
require 'pry-byebug'

def addTwoDigits(n)
  binding.pry
  s = n.to_s
  res = 0
  s.each_char { |c| res += c.to_i }
  res + res
end

binding.pry
puts addTwoDigits(29)

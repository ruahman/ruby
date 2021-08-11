
module Formatter
  extend self
  
  def wrap_with(symbol, str)
    "#{symbol * 4} #{str} #{symbol * 4}"
  end
end

puts Formatter.wrap_with("*", "hello")

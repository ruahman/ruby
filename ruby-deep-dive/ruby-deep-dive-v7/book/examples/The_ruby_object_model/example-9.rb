
str = "alternative syntax"

class << str
  def display
    puts self
  end
end

str.display

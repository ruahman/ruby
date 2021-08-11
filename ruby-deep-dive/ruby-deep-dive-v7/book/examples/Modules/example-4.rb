
module Numbers
end

class Calculator
  include Numbers
end

# Methods will be looked up in this order
p Calculator.ancestors

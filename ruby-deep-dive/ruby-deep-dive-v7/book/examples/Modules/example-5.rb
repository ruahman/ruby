
module Life
end

class Animal
end

class Tiger < Animal
  include Life
end

# The module (Life) is earlier in the list than
# the super-class (Animal).

Tiger.ancestors
=> [Tiger, Life, Animal, Object, Kernel, BasicObject]

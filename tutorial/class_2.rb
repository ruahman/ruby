
ages = [18, 22, 25, 30]
p ages.class  

p 20.class

p Array.class
p String.class
p Class.class 

p Array.ancestors

p Array.included_modules

p Array.ancestors - Array.included_modules


class Animal
    def self.test
    end
end

p Animal.singleton_methods


str = "test"

# only for this object
def str.show
    puts self
end

p str.singleton_methods



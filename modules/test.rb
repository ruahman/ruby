module Cream
    def cream?
        true
    end
end

class Cookie
    include Cream
end

cookie = Cookie.new

p cookie.cream?

require 'digest'

module Encryption 
    def encrypt(string)
        Digest::SHA2.hexdigest(string)
    end
end

class Person
    include Encryption

    attr_accessor :password

    def encrypted_password
        encrypt(@password)
    end
end

person = Person.new
person.password = "super secret"

puts person.encrypted_password


module Numbers
    PI = 3.1415

    # this is a class method
    def self.double(number)
        number * 2
    end

    # this is a instance method
    def test
        puts "this is a test"
    end

end

p Numbers::PI

p Numbers.double(7)

class Calculator
    include Numbers
end

p Calculator.ancestors

calc = Calculator.new

calc.test

# doesn't work
# p calc.double(7)


module ClassMethods
    def add_product
        "extend this"
    end
end

class Store
    # gets added as class methods
    extend ClassMethods
end

p Store.singleton_methods

p Store.add_product

# this wont work
# x = Store.new
# p x.add_product



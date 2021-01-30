require 'pp'

class Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        puts "creating code"

        @title = title
        @author = author
        @pages = pages
    end

    def someMethod()
        pp title
    end
end

# book1 = Book.new
# book1.title = "gone with the wind"

# pp book1


book2 = Book.new("dune", "hubert", "500")

pp book2

book2.someMethod




class Chef

    def method1
        puts "just some method"
    end

    def method2 
        puts "hello there"
    end

end

chef = Chef.new

chef.method1


class ItalianChef < Chef

end


chef2 = ItalianChef.new

chef2.method2


class Invoice

    def self.class_method
        puts "this is a class method"
    end

    def instance_method
        puts "this is a instance method"
    end

end

Invoice.class_method

obj = Invoice.new

obj.instance_method







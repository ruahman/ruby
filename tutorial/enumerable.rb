
# Enumerable is a module that is included in Array, Hash, Range

# accumilated
p [10, 20, 30].inject { |total, num| total + num }

p [10, 20, 30].inject(&:+)

[10, 20, 30, 40, 50].inject do |total, num|
    puts "Totla: #{total} \t" + "Number: #{num}"
    total + num
end

prices = {
    bacon: 10,
    coconut: 20
}

p prices.inject(0) { |total, values| total + values[1]}

p prices.inject(5) { |total, (key, value)| total + value }

p %w(cat dog cow).all? { |word| word.length == 3 }

numbers = [1,2,3,4,5]
p numbers.reject(&:odd?)


numbers = [1,2,3,4,5,6,7,8,9]
p numbers.partition(&:even?)


p [28, 75, 19, 12, 21].sort_by { |n| n.to_s[-1] }

numbers = [3,6,5,4,7]

p numbers.sort.each_cons(2).all? { |x, y| x == y - 1 }


User = Struct.new(:name, :age, :country)

class UserRepository
    extend Enumerable

    def self.all
        [
            User.new('test', 18, 'Spain'),
            User.new('roberto', 24, 'Cuba'),
            User.new('john', 30, 'France')
        ]
    end

    def self.each
        all.each { |user| yield user }
    end

end

p UserRepository.select { |user| user.age > 20 }
p UserRepository.map(&:name)


class FileCabinet
    def initialize
        @documents = [1, 2, 3]
    end

    def size
        @documents.size
    end

    def each
        count = 0

        while count < size
            yield @documents[count]
            count += 1
        end
    end
end

FileCabinet.new.each { |doc| puts doc }


Book = Struct.new(:title, :author, :pages)

class Library
    attr_accessor :books

    def initialize
        @books = [ 
            Book.new('Eloquent Ruby', 'Russ Olsen', 448),
            Book.new('Confident Ruby', 'Avdi Grimm', 296)
        ]
    end

    def map
        results = []
        
        @books.each { |book| results << yield(book) }

        results
    end


end

library = Library.new
p library.map(&:title)

enum = [1,2,3,4,5].select

# p enum.next
# p enum.next
# p enum.next
# p enum.next
# p enum.next

# throws an exception
# p enum.next

enum = [1,2,3,4,5].select

# loop { p enum.next }


big_array = Array(1..10_000)

p big_array.lazy.map { |n| p "lazy: #{n}"; n ** 2 }.all? { |n| n < 100 }

require 'prime'

# Vary fast
p (1..Float::INFINITY).lazy.select(&:prime?).first(10)


my_generator_fib =
Enumerator.new do |yielder|
    first = 0
    second = 1

    yielder.yield(1)

    loop do
        
        fib = first + second

        yielder.yield(fib)

        first, second = second, fib
    end
end


p my_generator_fib.take(10)
p my_generator_fib.take(5)


5.times { p my_generator_fib.next }
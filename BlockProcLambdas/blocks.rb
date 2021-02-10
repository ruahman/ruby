# blocks are enclosed in do / end or {}

[1, 2, 3].each { |num| puts num }

[1, 2, 3].each do |num|
    p num
end

# This allows you to send code as part of a method call, like a kind ofparameter.


def time
    start = Time.now
    yield
    Time.now - start
end

# how long does it take to make this string
p time { "a" * 1000 }


hash = { :a => 1 }

p hash.fetch(:c) { 123 }

def request_http &on_complete

    on_complete.call 
end

request_http { puts "Done" }


def print_once
    yield
end

print_once { puts "Block is being run" }

def print_twice
    yield
    yield
end

print_twice { puts "hello" }

def one_two_three
    yield 1
    yield 2
    yield 3
end

one_two_three { |number| puts number * 10 }

def explicit_block(&block)
    block.call
end

explicit_block { puts "Explicit block called" }

def do_something_with_block
    return "No block given" unless block_given?
    yield
end


say_something = -> { puts "This is a lambda" }
say_something.call

times_two = ->(x) { x * 2 }

p times_two.call(10)

# calls the to_proc method on whatever object is on the right
p ["cat", "dog"].map(&:upcase)

p %w(foo bar).map(&:upcase)









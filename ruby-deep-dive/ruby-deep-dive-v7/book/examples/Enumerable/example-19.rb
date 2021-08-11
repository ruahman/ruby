
my_generator =
Enumerator.new do |yielder|
  first  = 0
  second = 1

  # Yield the first number in the sequence
  yielder.yield(1)

  loop do
    # Calculate next fibonacci number
    fib = first + second

    # Yield the result
    yielder.yield(fib)

    # Advance the sequence
    first, second = second, fib
  end
end

p my_generator.take(10)
p my_generator.take(5)

5.times { p my_generator.next }

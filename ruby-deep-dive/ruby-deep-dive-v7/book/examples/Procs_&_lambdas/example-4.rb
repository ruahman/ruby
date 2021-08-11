
def print_twice
  yield
  yield
end

print_twice { puts "Hello" }

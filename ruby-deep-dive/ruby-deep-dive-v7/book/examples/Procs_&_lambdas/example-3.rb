
def print_once
  yield
end

print_once { puts "Block is being run" }

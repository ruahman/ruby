

def test 
  puts "test"
  test1
end


def test1
  puts "test1"
  test2
end

def test2 
  puts "test2"
  test3
end

def test3 
  puts "test3"
  raise "test4"
end

test

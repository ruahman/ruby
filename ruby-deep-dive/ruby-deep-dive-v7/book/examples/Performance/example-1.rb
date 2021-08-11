
def expensive_method
  50000.times { |n| n * n }
end

def measure_time
  before = Time.now
  yield
  puts Time.now - before
end

measure_time { expensive_method }

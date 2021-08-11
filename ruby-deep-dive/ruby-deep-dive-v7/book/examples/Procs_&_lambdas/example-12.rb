
t = Proc.new { |x,y| puts "I don't care about arguments!" }
t.call

t = -> (x, y) { puts "I care about arguments" }
# t.call


def call_proc
  puts "Before proc"
  my_proc = Proc.new { 1; return 2; 3 }
  my_proc.call
  puts "After proc"
end

p call_proc
# Prints "Before proc" but not "After proc"


[10,20,30,40,50].inject() do |total, num|
  puts "Total: #{total}".ljust(12)  + "Number: #{num}"
  total + num
end

# Total: 10   Number: 20
# Total: 30   Number: 30
# Total: 60   Number: 40
# Total: 100  Number: 50

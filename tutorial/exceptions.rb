lucky = [ 1, 2, 3, 4, 5]

begin
    # num = 10 / 0
    lucky["test"] 
rescue ZeroDivisionError 
    puts "division by zero error" 
rescue TypeError => e
    puts e 
end



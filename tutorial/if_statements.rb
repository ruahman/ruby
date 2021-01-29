ismale = true
istale = true
isfemale = true

# if ismale and istale
if ismale or istale
    puts "you are a male"
elsif isfemale and !istale
    puts "you are a woman"
else
    puts "you are not male"
end


def max(num1, num2)
    if num1 >= num2
        return num1
    else 
        return num2
    end
end


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


# testA = [1,2,3,4,5]
testA = []

# run this code unless testA is empty
unless testA.empty?
    testA.each do |x| 
        p x
    end
else
    p "I guess array was empty"
end


testB = [1,2,3,4,5]

# this reads more like english
testB.each {|x| p x} unless testB.empty?

puts "your empty again" if testB.empty?





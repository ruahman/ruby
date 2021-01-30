# 10.times do
#     x = 10
#     puts x
# end

# puts x

# global
10.times do
    $x = 10
    puts $x
end

puts $x

TEAM = "this is a constant"

class MyClass
    @@myclassVar = "shared in class"
end
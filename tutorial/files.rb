

# File.open('test.txt', 'r') do |file|
#     # puts file.read

#     # puts "readline"
#     # puts file.readline

#     for line in file.readlines 
#         puts line
#     end

#     p file.readlines
# end

File.open('test.txt', 'a') do |file|
    # file.write("foobar")
    # file.write("zoro")
    # file.write("redrum")

    file.puts "\nI'm testing here"
    file.puts "\nI don't lkek you"
    file.puts "\ntribulation"

end

File.open('teeams.txt', 'w+') {|f| f.write("bulls", "black hawks", "cubs")}
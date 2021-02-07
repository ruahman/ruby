
begin
    File.open("random_file_001.txt")
rescue Errno::ENOENT 
    puts "File not found :("
end


begin
    File.open("fandom_file_001.txt")
rescue Errno::ENOENT => e        
    puts "File not found :("
    puts e.message
    puts e.backtrace
end

def open_file
    File.open("fandom_file_001.txt")
rescue Errno::ENOENT => e        
    puts "File not found :("
    puts e.message
    puts e.backtrace
end

open_file


begin
    puts "test"
rescue 
    puts "rescue"
ensure
    puts "Always print this!"
end


def testing(exception = false)
    raise if exception
    1
rescue
    "abcd"
end

p testing

p testing(true)


at_exit do
    puts "Program finished at #{Time.now}"
end

class InvalidAnswer < StandardError
end

# raise InvalidAnswer, "my error message"


value = [1,2,3]

p value_at_index_four: value[1], all_values: value










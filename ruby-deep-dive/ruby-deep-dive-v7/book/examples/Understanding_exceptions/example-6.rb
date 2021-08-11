
def open_file
  File.open("random_file_001.txt")
rescue Errno::ENOENT => e
  puts "File not found :("
  puts e.message
  puts e.backtrace
end

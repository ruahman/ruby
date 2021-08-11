
def call
  @mutex.lock

  begin
    puts "Do something..."
  ensure
    @mutex.unlock
  end
end

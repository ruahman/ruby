
require 'readline'

comp = proc do |s|
    directory_list = Dir.glob("#{s}*")

    if directory_list.size > 0
        directory_list
    else
        Readline::HISTORY.grep(/^#{Regexp.escape(s)}/)
    end
end

Readline.completion_append_character = " "
Readline.completion_proc = comp

prompt = "\u2C96 ".encode('utf-8')

# show history
while input = Readline.readline(prompt, true)
    break if input == "exit"
    puts Readline::HISTORY.to_a if input == "hist"
    Dir.chdir "my_app" if input == "cd"
    
    # Remove blank lines from history
    Readline::HISTORY.pop if input == ""
    system(input)
end

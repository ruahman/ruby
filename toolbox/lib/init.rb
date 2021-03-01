require 'pp'

def init(args)
    
    require 'fileutils'
    
    path = Dir.pwd

    # if user specified directory
    if not args.empty?
        path = path + "/" + args.first
        FileUtils.mkdir_p path
    end

    puts "added tools.config.rb to #{path}"

    FileUtils.cp("#{__dir__}/tools.config.rb", "#{path}/tools.config.rb")
end
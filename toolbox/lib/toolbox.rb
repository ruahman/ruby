require "#{Dir.pwd}/tools.config" if File.exists?("#{Dir.pwd}/tools.config.rb")
require_relative 'tools.config' unless File.exists?("#{Dir.pwd}/tools.config.rb")

def toolBox(argv)
    cmd, *args = argv
    
    case(cmd)
    when "init"
        require_relative 'init'
        init(args)

    when "nodejs"
        require_relative 'nodejs'

        nodejs(args, Config['nodejs'], Config['network'])
    
    when "python"
        require_relative 'python'
        
        python(args, Config['python'], Config['network'])

    when 'dotnet'
        require_relative 'dotnet'
        
        dotnet(args, Config['dotnet'], Config['network'])

    else
        puts "Welcome to tool_box!"
    end
end
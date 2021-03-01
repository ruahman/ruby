
def nodejs(args, settings, network)
    puts "running nodejs now..."

    # docker run
    cmd = "docker run -it --rm "

    # network
    cmd += "--network #{network} " if not network.nil?

    # expose
    cmd += "--expose #{settings['expose']} " if settings.key?('expose')
    
    # environment variables
    settings['env'].each {|e| cmd += "-e #{e} "} if settings.key?('env')
    
    # port
    cmd += "-p #{settings['ports'][0]}:#{settings['ports'][1]} " if settings.key?('ports')

    # volume
    cmd += "-v #{Dir.pwd}:/src -w /src " 

    # images and command
    cmd += "#{settings['image']} bash" 

    puts cmd

    system(cmd)
end
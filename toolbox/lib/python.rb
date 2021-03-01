
def python args, settings, network
    puts "running python now"

    puts settings

    cmd ="docker run -it --rm "

    cmd += "--network #{network} " unless network.nil?

    # expose
    cmd += "--expose #{settings['expose']} " if settings.key?('expose')

    # port
    cmd += "-p #{settings['ports'][0]}:#{settings['ports'][1]} " if settings.key?('ports')

    # volume
    cmd += "-v #{Dir.pwd}:/src -w /src "

    # images and command
    cmd += "#{settings['image']} bash" 
    
    puts cmd

    system(cmd)
end
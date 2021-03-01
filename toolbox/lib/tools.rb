require 'open3'
require 'pp'

def run(cmd)
    pp cmd
    stdout, stderr, status = Open3.capture3(cmd)

    if status.success?
        puts stdout
    else
        puts stdout
        abort 'error: could not execute command'
    end

    status
end

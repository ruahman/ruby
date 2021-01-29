module Tools

    def sayhi
        puts "hello there"
    end

    def saybye
        puts "gooooood byyyyyyy"
    end
    
end

include Tools
Tools.sayhi
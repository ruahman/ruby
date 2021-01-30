

def roster *players
    puts players
end

roster 'frank', 'dean', 'sammy'


def roster2 **players
    players.each do |key, value|
        puts "#{key}, #{value}" 
    end
end

roster2 diego: "test me", angilo: "asdfasf", java: "bad"


def invoice options={}
    p options[:foo]
    p options[:bar]
    p options[:test]
end

invoice foo: "hello world"
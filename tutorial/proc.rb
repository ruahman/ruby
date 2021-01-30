# full_name = Proc.new {|x,y| x + "  " + y}

full_name = Proc.new do |x,y| 
    x + "  " + y
end

p full_name["diego","vila"]

p full_name.call("diego","vila")
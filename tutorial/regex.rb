string = "the quick 12 brown foxes jumped over the 10 lazy dogs"

# p string =~ /o/
p string =~ /quick/

p string =~ /z/ ? "found z" : "not found z"

# this is case sencitive
if string =~ /Z/
    p "I found z"
else
    p "there is no z here"
end

# now it is case insensitive
if string =~ /Z/i
    p "I found z"
else
    p "there is no z here"
end

p string.to_enum(:scan, /\d+/).map { Regexp.last_match }


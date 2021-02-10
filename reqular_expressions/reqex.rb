
p "Do you like cats?" =~ /cats/


def contains_vowel(str)
    str =~ /[aeiou]/
end

p contains_vowel("test")
p contains_vowel("sky")


def contains_number str
    str =~ /[0-9]/
end

p contains_number("the year is 2015")
p contains_number("the cat is black")

# \w is equivalent to [0-9a-zA-Z]
# \d is the same as [0-9]
# \s matches spaces

# \W anythin not [0-9a-zA-z]
# \D anything not [0-9]
# \S anyting not a space

p "9".match? /\d/
p "a".match? /\d/

p "5a5".match(/\d.\d/)

p "5a5".match(/\d\.\d/)
p "5.5".match(/\d\.\d/)


def ip_address?(str)
    # !! convert value to boolean
    !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end


p ip_address?("192.168.1.1")
p ip_address?("0000.0000")


p "Regexp are cool".match /\w{5}/
p "Regexp are cool".match /^\w{5}$/

p "123abd".match /^\d+$/
p "123".match /^\d+$/

p "foo\nbar".match(/^bar/)

# think of A as anchor.  Anchor to first line in string not newline
p "foo\nbar".match(/\Abar/)

Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/

def parse_line(line)
    line.match(LOG_FORMAT) { |m| p Line.new(*m.captures) }
end

parse_line("12:41 INFO User has logged in.")

m = "David 30".match /(?<name>\w+) (?<age>\d+)/
p m[:age]
p m[:name]

p "reqex are great".gsub(/(\w+)/, '-\1-')

# scan look sfor multiple occurrences of a pattern
p "this is some string".scan(/\w+/)


re = /force/
string = "Use the force"
p re.match(string)

re = /Y(olk|oda)/
p re.match("Yolk")
p re.match("Yoda")

re = /No+/
p re.match("Noooo")

re = /No+?/
p re.match("Nooooo")

re = /.*moon/
p re.match("That's no moon")

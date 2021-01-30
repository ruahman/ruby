def sayHi
    puts "Hello user"
end

sayHi


def cube(x)
    x * x * x 
end

p cube(3)


def test 
    [1,2,3,4,5]
end

p test


def print_address city:, state:, zip:
    puts city, state, zip
end

print_address city: "chicago", state: "IL", zip: 60647


def movie_title title:, lang: "Eng"
    puts title, lang
end

movie_title title: "Dune"



h = { water: 300, oil: 100 }

h.each do |key, value|
    puts "The key is #{key} with value #{value}"
end

p h.keys

p h.values

h = {}

p h.fetch(:some_key) { 'defalut' }


h = { name: 'Jose', age: 29 }

h.merge(age: 30, city: 'Spain')

p h


the_hash = {
    user: {
        name: "Peter",
        country: "UK",
        age: 30
    }
}

p the_hash.dig(:user, :country)
p the_hash.dig(:somthing, :country)
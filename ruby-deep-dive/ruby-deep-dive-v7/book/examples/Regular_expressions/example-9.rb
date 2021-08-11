
m = "David 30".match /(?<name>\w+) (?<age>\d+)/
m[:age]
# => "30"
m[:name]
# => "David"

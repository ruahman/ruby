
file = CSV.read("users.csv", headers: true)

puts file.headers
# => ["id", "name", "age"]

file.each { |row| puts row["name"] }
# Peter
# James
# Fred

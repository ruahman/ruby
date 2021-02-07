# comma-seperated values

require 'csv'

# puts CSV.read("file.csv")

file = CSV.read("users.csv", headers: true)

puts file.headers

file.each { |row| p row }
users = %w(john david peter)

p users

p users.first
p users.last

users << "andrew"

p users

[1,2,3,4,5].each{ |item| puts item }

users = users.map { |user| user.capitalize }
p users

flat = [[1,2,3],[4,5,6]].flatten
p flat

numbers = [3, 7, 12, 2, 49]

p numbers.select { |n| n > 10 }

numbers = *[1,2,3], 5, 6, 7
p numbers


*a, b= 1,2,3,4,5,6,7
p a, b

a, *b, c = [1,2,3,4,5,6,7,8,9]

p a, b, c
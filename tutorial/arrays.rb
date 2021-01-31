test = ['diego', 'andy', 'sam', 'mom', 'pa']

p test

p test[0, 3]

testa = [1,2,3,4,5,6,7,8,9]
p testa

testa.delete_if {|x| x % 2 > 0}

p testa

testb = %w(this is an array)
p testb
p testb.join(',')
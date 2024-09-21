i = 0

while i < 10
  puts 'key hey there'
  puts i
  i += 1
end

array = [1, 2, 3, 4, 5]

array.each do |x|
  puts "each: #{x}"
end

array.each { |x| p x }

for i in 0..42
  p i
end

hash = {
  one: {
    foo: 'bar'
  },
  two: {
    foo: 'bar'
  },
  three: {
    foo: 'bar'
  }
}

hash.each do |key, val|
  puts "#{key}:#{val}"
end

p((1..10).to_a.select { |x| x.even? })
p (1..10).to_a.select(&:even?)

p %w[this gets converted to an array]

# this runs the shell
# p %x(ls | grep -win *.rb)

p %w[does this get truned to]

# reqex expression filter
p(%w[a b c d e f g].select { |x| x =~ /[aeiou]/ })

p(['2', '3.3', '7', '98', '3'].map { |x| x.to_i })
p ['2', '3.3', '7', '98', '3'].map(&:to_i)

# create hash
p Hash[%w[this is an array to convert to a hash].map { |x| [x, x.length] }]

testH = { a: 'foo', b: 'bar' }.map { |k, v| "#{k}=#{v}" }.join('&')
pp testH

p [1, 2, 3, 4, 5].inject(&:+)

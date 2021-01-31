states = {
    :Illinois => "IL",
    "New York" => "NY"
}

p states[:Illinois]


testA = {
    :foo => "bar",
    :hello => "world"
}

p testA.invert

testB = {
    :test => "joe",
    :rant => "java"
}

p testA.merge(testB)

p testA.to_a

p testA.keys

p testA.values

testA.each_key do |x|
    puts x
end

testA.each do |key, val| 
    puts "#{key}:#{val}"
end
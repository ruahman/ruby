
def return_binding
  foo = 100
  binding
end

puts return_binding.class
puts return_binding.local_variable_get(:foo)

puts foo
# undefined local variable or method `foo'

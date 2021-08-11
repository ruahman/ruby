
h = Hash.new { |hash, key| hash[key] = [] }

h[:foo]
# Output: []

h[:bar] << 5
# Output: [5]

h.keys
# Output: [:foo, :bar]

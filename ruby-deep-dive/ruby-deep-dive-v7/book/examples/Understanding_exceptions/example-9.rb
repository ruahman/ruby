
def testing(exception = false)
  raise if exception
  1
rescue
  "abcd"
end

p testing
# Output: 1

p testing(true)
# Output: "abcd"

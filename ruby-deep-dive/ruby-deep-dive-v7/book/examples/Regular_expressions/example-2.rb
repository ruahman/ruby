
def contains_vowel(str)
  str =~ /[aeiou]/
end

p contains_vowel("test") # returns 1
p contains_vowel("sky")  # returns nil

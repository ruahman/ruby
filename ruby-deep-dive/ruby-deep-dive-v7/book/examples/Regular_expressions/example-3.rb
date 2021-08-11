
def contains_number(str)
  str =~ /[0-9]/
end

contains_number("The year is 2015")  # returns 12
contains_number("The cat is black")  # returns nil

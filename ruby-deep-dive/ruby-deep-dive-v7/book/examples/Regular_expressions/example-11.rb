
def number_after_word?(str)
  str =~ /(?<=\w) (\d+)/
end

number_after_word?("Grade 99")

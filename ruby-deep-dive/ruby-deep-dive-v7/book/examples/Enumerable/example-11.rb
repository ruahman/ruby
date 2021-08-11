
def map
  results = []

  @books.each { |book| results << yield(book) }

  results
end

require 'yaml'

test_yaml = YAML.load_file("test.yaml")

p test_yaml

Book = Struct.new(:title, :author)
eloquet = Book.new('Eloquent Ruby', "Russ Olsen")

serialized_book = YAML.dump(eloquet)

File.write("books.yml", serialized_book)

# this is a faster way
File.write("books_fast.yml", eloquet.to_yaml)
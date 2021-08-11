
require 'yaml'

Book     = Struct.new(:title, :author)
eloquent = Book.new('Eloquent Ruby', 'Russ Olsen')

serialized_book = YAML.dump(eloquent)

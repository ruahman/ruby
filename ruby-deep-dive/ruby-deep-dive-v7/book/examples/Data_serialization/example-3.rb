
require 'yaml'

nested_array = YAML.load_file("array.yml")
# => [["foo", "bar", "baz"]]

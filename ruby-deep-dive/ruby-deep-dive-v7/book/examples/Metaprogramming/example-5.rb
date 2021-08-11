
# Top-level context, self is just an instance of Object
puts self

class FindingSelf
  # self is the class
  puts self

  def show_self
    # self is the object instance
    puts self
  end
end

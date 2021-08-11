
class Example
  def initialize
    @value = 10
  end
end

example = Example.new
example.instance_eval("@value = 20")
p example

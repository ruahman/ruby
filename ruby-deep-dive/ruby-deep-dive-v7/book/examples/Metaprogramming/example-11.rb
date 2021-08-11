
class A
  def say
  end
end

class B < A
end

p B.new.respond_to?(:say)

# => true

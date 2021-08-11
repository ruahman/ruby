
class Total
  def initialize
    @count = 2
  end
end

Total.new.instance_variables
# => [:@count]

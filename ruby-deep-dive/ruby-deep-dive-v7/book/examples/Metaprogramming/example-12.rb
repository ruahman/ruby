
class Animal
  def self.speak
  end
end

p Animal.method(:speak).source_location


class Finder
  def method_missing(name, *args, &block)
    puts "The method #{name} was called but it's not defined in #{self.class}."
  end
end

finder = Finder.new
finder.find_cool_stuff

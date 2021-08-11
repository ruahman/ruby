
class Product
  include Comparable

  # Use the price to decide if two products are equal
  def <=>(other)
    self.price <=> other.price
  end
end

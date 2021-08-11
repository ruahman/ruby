
module ClassMethods
  def add_product
  end
end

class Store
  extend ClassMethods
end

p Store.singleton_methods

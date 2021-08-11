
module Kernel  
  def require(file)
    original_require(file)
  rescue LoadError
    loaded = load_gem(file)
    raise unless loaded
  end
end

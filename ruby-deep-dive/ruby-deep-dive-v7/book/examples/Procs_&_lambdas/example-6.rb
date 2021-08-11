
def explicit_block(&block)
  block.call
end

explicit_block { puts "Explicit block called" }

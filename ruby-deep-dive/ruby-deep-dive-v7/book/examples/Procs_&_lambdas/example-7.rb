
def do_something_with_block
  return "No block given" unless block_given?
  yield
end

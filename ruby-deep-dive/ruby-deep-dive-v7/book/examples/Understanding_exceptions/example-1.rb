
def buy_milk
  "got milk"
end

def buy_bread
  raise "No bread left!"
end

def go_shopping
  buy_milk
  buy_bread
end

go_shopping

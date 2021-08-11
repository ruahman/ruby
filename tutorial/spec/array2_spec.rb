describe 'arrays2' do
  it 'array of strings' do
    users = %w[john david peter]
    p users

    # show first and last element
    p users.first
    p users.last

    # append
    users << 'andrew'
    p users

    # cap all items
    users_cap = users.map(&:capitalize)
    p users_cap
  end

  it 'maps' do
    [1, 2, 3, 4, 5].each { |item| puts item }
  end

  it 'flatten' do
    flat = [[1, 2, 3], [4, 5, 6]].flatten
    p flat
  end

  it 'select' do
    numbers = [3, 7, 12, 2, 49]
    p(numbers.select { |n| n > 10 })
  end

  it 'splicing???' do
    *rest, element = 1, 2, 3, 4, 5, 6, 7
    p "rest: #{rest}"
    p "element: #{element}"

    first, *span, last = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    p "first: #{first}, span: #{span}, last: #{last}"
  end

  it 'range???' do
    test = %w[diego andy sam mom pa]
    p test
    p test[0, 3]
  end
end

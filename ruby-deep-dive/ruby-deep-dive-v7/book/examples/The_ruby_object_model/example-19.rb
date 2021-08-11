
class UserRepository
  def initialize
    @users = ['Peter', 'James', 'Luke']
  end

  def [](idx)
    @users[idx]
  end
end

users = UserRepository.new
puts users[0]
# Output: Peter

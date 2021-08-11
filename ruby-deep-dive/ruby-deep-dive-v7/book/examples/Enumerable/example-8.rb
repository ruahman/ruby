
class UserRepository
  include Enumerable

  def users
    [
      User.new('roberto', 24, 'Cuba'),
      User.new('john', 30, 'France')
    ]
  end

  def each
    users.each { |user| yield user }
  end
end

User       = Struct.new(:name, :age, :country)
repository = UserRepository.new

p repository.map(&:name)

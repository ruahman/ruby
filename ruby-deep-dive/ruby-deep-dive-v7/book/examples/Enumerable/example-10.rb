
class Library
  attr_accessor :books

  def initialize
    @books = [
      Book.new('Eloquent Ruby',  'Russ Olsen', 448),
      Book.new('Confident Ruby', 'Avdi Grimm', 296)
    ]
  end
end

Book = Struct.new(:title, :author, :pages)

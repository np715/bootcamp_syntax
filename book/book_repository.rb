# book_repository.rb
class BookRepository
  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def find_by_id(id)
    @books.find { |book| book.id == id }
  end

  def delete(id)
    @books.delete_if { |book| book.id == id }
  end

  def all
    @books
  end
end
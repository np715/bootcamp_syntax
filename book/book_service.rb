# book_service.rb
class BookService
  def initialize(repository = BookRepository.new)
    @repository = repository
  end

  def add_book(id, title, author)

    if @repository.find_by_id(id)
      return nil 
    end
    book = Book.new(id, title, author)
    @repository.add(book)
    book
  end

  def update_book(id, title: nil, author: nil)
    book = @repository.find_by_id(id)
    if book.nil?
      return nil 
    end
    book.title = title if title  
    book.author = author if author  
    book  
  end

  def delete_book(id)
    @repository.delete(id)
  end

  def list_books
    @repository.all.map(&:info)
  end
end
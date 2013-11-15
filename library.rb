class Library
  def initialize
    @books = []
  end

  def books (title, author)
    books = {:title => author}
  end

  def list_books
    
  end

  def borrowed_books

  end

  def available_books
  end


  def add_book(book)
    @books << book
    
  end

  def check_out(user, book)

  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
    puts "Welcome new borrower #{name} to the Library"
  end

  def borrowed_books

  end

  def name
  end

  def borrowed_books_count
  end

  def borrowed_books_list
  end
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
    puts "You have just added a new book: #{title} : #{author}."
  end

  def title
    @title
  end

  def author
    @author
  end
end

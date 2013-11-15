class Library
  def initialize
    @books = []
  end

  def list_books
    @books.each do |book| 
      puts "Book Title:  #{book.title} , Book Author: #{book.author}"
    end
  end

  def borrowed_books

  end

  def available_books
  end


  def add_book(book)
    @books << book
  end

  def check_out(user, book)
    if user.borrowed_books.length == 2
      return "Sorry, that user already has two books checked out"
    end

    if book.status == "available"
      book.borrower = user
      book.status = "checked out"
    else
      return "Sorry, this book is checked out!"
    end
  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
    @books = []
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
  #attr_reader :title, :author
  def initialize(title, author)
    @title = title
    @author = author
    puts "You have just added a new book: #{title} : #{author}."
    @status = 'available'
    @borrower = nil
  end

  def title
    @title
  end

  def author
    @author
  end

  def status
    @status
  end

  def status= (new_value)
    @status = new_value
  end

  def borrower
    @borrower
  end

  def borrower= (new_value)
    @borrower = new_value 
  end

end



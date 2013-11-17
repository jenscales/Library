#This creates a Library with books.  Empty first. Add books with add_book method
class Library
  def initialize
    @books = []
  end

  #This will list out all books in the Library
  def list_books
    @books.each do |book| 
      puts "Book Title:  #{book.title}, Book Author: #{book.author}"
    end
  end

  def borrowed_books
    @books.each do |book|
      if book.status == 'checked out'
        puts "Sorry, This book #{book.title} is not available today!"
        puts "The following borrower: #{book.borrower.name} has this book checked out"
      end
    end
  end
  
  # This will print what books are currently available for checkout
  def available_books
    @books.each do |book|
      if book.status == 'available'
        puts "Good News! This book #{book.title} is available today!"
      end  
    end
  end

  #This will add a new book into the Library
  def add_book(book)
    @books << book
    puts "We have just added the following NEW book '#{book.title}' to the Library"
  end

  #This process will check if the user can borrow a book.
  def check_out(user, book)
    if user.borrowed_books.length == 2
      return "Sorry, that user #{user} already has two books checked out."
    end

    if book.status == "available"
      book.borrower = user
      book.status = "checked out"
      user.borrow_book(book)
      puts "Great, you just checked out a book: #{book.title}"
    else
      puts "Sorry, this book is checked out!"
    end
  end

  def check_in(book)
    if book.status == "checked out"
      book.borrower = user
      book.status = "available"
      puts "Thank you for returning the book: #{book.title}"
    else
      puts "This book does not belong in this library. We already have a copy. Thanks!"
    end
  end

end


class Borrower
  def initialize(name)
    @name = name
    @books = []
    puts "Welcome new borrower #{name} to the Library"
  end

  def borrowed_books
    @books
  end

  def borrow_book(book)
    @books << book
  end 

  def name
    @name
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



#This creates a Library with books.  Library is empty first. Add books with add_book method
class Library
  def initialize
    @books = []
    puts "Our new Library is now Open! Let's read."
  end

  #This will list out all books in the Library by Title, Author and Status
  def list_books
    @books.each do |book| 
      puts "Book Title: #{book.title}, Book Author: #{book.author}, Book Status: #{book.status}"
    end
  end

  #This checks a books status and if it is checked out will return the borrower's name and book title.
  def borrowed_books
    @books.each do |book|
      if book.status == "checked out"
        puts "Sorry, The book '#{book.title}' is not available today!"
        puts "The following borrower: #{book.borrower.name} has this book checked out"
      end
    end
  end
  
  # This will print what books are currently available for checkout
  def available_books
    @books.each do |book|
      if book.status == "available"
        puts "Good News! This book '#{book.title}' is available today!"
      end  
    end
  end

  #This will add a new book into the Library
  def add_book(book)
    @books << book
    puts "We have just added the following NEW book '#{book.title}' to the Library"
  end

  #This will check if the user can borrow a book.
  def check_out(user, book)
    if user.borrowed_books.length == 2
      puts "Sorry, the user #{user.name} already has two books checked out."
      return
    end

    if book.status == "available"
      book.borrower = user
      book.status = "checked out"
      user.borrow_book(book)
      puts "Great #{book.borrower.name}, you just checked out a book: #{book.title}"
    else
      puts "Sorry #{book.borrower.name}, the book '#{book.title}' is checked out!"
    end
  end


  #This will check in a book back to the Library
  def check_in(book)
    if book.status == "available"
      return "Uh oh! This book does not belong to this library. Thanks, but we already have a copy available"
    end

    if book.status == "checked out"
      puts "Thank you #{user} for returning the '#{book}' today! Come again."
      user.borrowed_books.delete(book)
      book.status = "available"
    end
  end
#This is the end of the Library Class
end

#This creates a new borrower. Assigns books as empty. Assigns name. Welcomes borrower to library.
class Borrower
  def initialize(name)
    @name = name
    @books = []
    puts "Welcome new borrower #{name} to the Library"
  end

  #This shows what books the borrower currently has.
  def borrowed_books
    @books
  end

  #This will add a book to the borrower's account.
  def borrow_book(book)
    @books << book
  end 

  #This creates a variable name for the borrower's name.  
  def name
    @name
  end

  #This sets and prints the books currently borrowed by the user.
  def borrowed_books_count
    books.length
  end

  #This prints out the title and author of each book the borrower has.
  def borrowed_books_list
    @books.each do |book|
        puts  "This book is checked out: #{book.title} by #{book.author}"
    end
  end
#This is the end of the Borrower Class
end

#This defines a book with in the library
class Book
  #attr_reader :title, :author
  def initialize(title, author)
    @title = title
    @author = author
    puts "You have just added a new book: #{title} by #{author}."
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
#This is the end of the Book class
end

#This is the end of the entire Library Program.  :o)


class Book < Media
  include CurrencyFormat
  
  attr_reader :category, :isbn, :author

  def initialize(title, author, isbn = '1', number_of_pages, price, category)
    @title = title
    @author = author
    @isbn = isbn
    @number_of_pages = number_of_pages
    @price = price
    @category = category
    @discount = 0.15
  end

  def to_s
    "Author: #{@author}, ISBN: #{@isbn}, Pages: #{@number_of_pages}, Category: #{@category}"
  end

  def eql?(other_book)
    @isbn == other_book.isbn
  end

  def hash
    @isbn.hash
  end
end

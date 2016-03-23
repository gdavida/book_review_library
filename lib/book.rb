class Book

  attr_accessor :title, :author, :illustrator, :isbn, :year_written

  def initialize(title:, author:, illustrator:, isbn:, year_written:)
    @title          = title
    @author         = author
    @illustrator    = illustrator
    @isbn           = isbn
    @year_written   = year_written
    @book_review    = nil
  end

  def book_general_info(title, author, year_written)
    "The book #{title} was written by #{author} in #{year_written}."
  end

  def book_review=(book_review)
    @book_review = book_review
    book_review.book = self
  end

  # def isbn=(isbn)
  #   @isbn = new_isbn
  #     if isbn.length != 13 || isbn.is_a? Integer
  #     end
  # end

end
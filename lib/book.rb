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


  def book_review=(book_review)
    @book_review = book_review
    book_review.book = self
  end
  
  ### GENERAL INFO ABOUT THE BOOK
##################################
#   Checks if string has at least one upcase letter
#
#   + title: string representing the title
#   + author: string representing the authors full name
#   + year_written: string representing a year
#
#   returns A sentence about the book's title and who it was written by and when.
# ---------------------------------
#

  def book_general_info(title, author, year_written)
    "The book #{title} was written by #{author} in #{year_written}."
  end


  # def isbn=(isbn)
  #   @isbn = new_isbn
  #     if isbn.length != 13 || isbn.is_a? Integer
  #     end
  # end

end
require_relative "book_review.rb"

class Book

  attr_accessor :title, :author, :illustrator, :isbn, :year_written

#
#
#
#
#(title, author, options={})
#
#try using ordered parameters instead of required keywords
#
  def initialize(options={})
    @title          = options[:title]
    @author         = options[:author]
    @illustrator    = options[:illustrator]
    @isbn           = options[:isbn]
    @year_written   = options[:year_written]
    @book_review    = nil
  end

  def book_review=(book_review)
    @book_review = book_review
    book_review.book = self
  end


  ### GENERAL INFO ABOUT THE BOOK
##################################
#   Brings together some basic info about our book.
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

#Is the isbn a 13 digit number
  def isbn=(new_isbn)
      if (isbn.length == 13) && (isbn.to_i.is_a?(Integer))
        @isbn = new_isbn 
      else
        return "Not valid isbn, must be 13 characters"
      end
  end

#Is the year a 4 digit number?
  def year_written=(year_written)
      if (year_written.length == 4) && (year_written.to_i.is_a?(Integer))
        @year_written = year_written 
      else
        return "Not valid isbn, must be 13 characters"
      end
  end

end
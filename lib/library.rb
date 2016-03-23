
class Library

  attr_accessor :title, :author, :illustrator, :isbn, :year_written

  def initialize(options={})
    @dvds           = options[:title]
    @magazines      = options[:author]
    @book          = nil
    @location       = options[:location]
  end

  def book=(book)
    @book = book
    book.gaffney_library = self
  end


  def book_general_info(date_added_to_library, title)
    "The book #{title} was written by #{author}."
     
  end




end
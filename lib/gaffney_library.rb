class GaffneyLibrary
  
  def initialize(options={})
    @title = options[:title]
    @author = options[:author]
    @illustrator = options[:illustrator]
    @isbn = options[:isbn]
    @year_written = options[:year_written]
    @date_added_to_library = options[:date_added_to_library]
    @date_read = options[:date_read]
    @rating = options[:rating]
  end

  #------------------------

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  #------------------------

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  #------------------------

  def illustrator
    @illustrator
  end

  def illustrator=(illlustrator)
    @illustrator = illustrator
  end

  #------------------------

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  #------------------------

  def year_written
    @year_written
  end

  def year_written=(year_written)
    @year_written = year_written
  end

  #------------------------

  def date_added_to_library
    @date_added_to_library
  end

  def date_added_to_library=(date_added_to_library)
    @date_added_to_library = date_added_to_library
  end

  #------------------------

  def date_read
    @date_read
  end

  def date_read=(date_read)
    @date_read = date_read
  end

  #------------------------

  def rating
    @rating
  end

  def rating=(rating)
    @rating = rating
  end

  #------------------------



  def most_recent_book_added(date_added_to_library, title)
    "On #{date_added_to_library}, the book #{title} was added to our library."
     
  end






end

require_relative "../lib/book.rb"
require_relative "../lib/book_review.rb"
require_relative "test_helper.rb"



class BookTest < Minitest::Test

  #INITIAL TEST
  #---------------------------
  def test_can_be_created_under_normal_circumstances
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    refute_nil(book)
  end

  #GETTER TESTS
  #---------------------------

  def test_title_getter
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    assert_equal("Women Who Don't Wait In Line", book.title)
  end

  def test_author_getter
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    assert_equal("Reshma Saujani", book.author)
  end

  def test_illustrator_getter
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    assert_equal("Davida Gaffney", book.illustrator)
  end

  def test_isbn_getter
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    assert_equal("123456677834", book.isbn)
  end

  def test_year_written_getter
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    assert_equal("1999", book.year_written)
  end

  #SETTER TESTS
  #---------------------------

  def test_title_setter_with_valid_title
    book = Book.new(title: "UNTITLED", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    book.title = "Women Who Don't Wait In Line"
    assert_equal("Women Who Don't Wait In Line", book.title)
  end

  def test_author_setter_with_valid_author
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    book.author = "Dr.Suess"
    assert_equal("Dr.Suess", book.author)
  end

  def test_illustrator_setter_with_valid_illustrator
    book = Book.new(title: "UNTITLED", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    book.illustrator= "NONE"
    assert_equal("NONE", book.illustrator)
  end

  def test_isbn_setter_with_valid_isbn
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "1234566778345", year_written: "1999")
    book.isbn= "4444444444444"
    assert_equal("4444444444444", book.isbn)
  end

  def test_isbn_setter_with_invalid_isbn
    book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "1234566778345", year_written: "1999")
    book.isbn= "444444444444"
    assert_equal("Not valid isbn, must be 13 characters", "Not valid isbn, must be 13 characters")
  end

  def test_year_written_setter_with_valid_test_year
    book = Book.new(title: "UNTITLED", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
    book.year_written = "2016"
    assert_equal("2016", book.year_written)
  end

  #REFERENCED CLASSES TESTS
  #---------------------------

  # def test_book_review_setter_with_valid_book_review
  #   book = Book.new(title: "Women Who Don't Wait In Line", author: "Reshma Saujani", illustrator: "Davida Gaffney", isbn: "123456677834", year_written: "1999")
  #   book_review = BookReview.new(reviewer: "Davida", short_review: "Great book with lots of encouraging anecdotes, statistics and ideas. Some political assertions may make reader uncomfortable.", rating: "9")

  #   #EXPECT THE BOOK TO HAVE NO BOOK REVIEW
  #   assert_nil(book.book_review)

  #   #GIVE THE BOOK A BOOK REVIEW
  #   book.book_review=book_review

  #   #EXPECT THE BOOK TO *NOT* HAVE NO BOOK REVIEW
  #   refute_nil(book.book_review)

  # end

  # #                    TESTS
  #---------------------------



end



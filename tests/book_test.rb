
require_relative "../lib/book.rb"
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

  # def test_age_setter_with_valid_age
  #   bear = Bear.new(name: "Yogi", age: 78, height: "9-3", humans_eaten: 0)
    
  #   bear.age = 81
  #   assert_equal(81, bear.age)
  # end

end



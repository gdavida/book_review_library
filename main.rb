require "pry"
require_relative "lib/book.rb"
require_relative "lib/library.rb"
require_relative "lib/book_review.rb"

#--------------

#BUILD A BOOK REVIEW
def add_a_book_review
	puts "\n\nBOOK REVIEW\n\n"
	print "Who is writing this review?"
	reviewer = gets.chomp

	print "What's the name of the book you are reviewing?"
	reviewer = gets.chomp

	print "Please write a short review of the book."
	short_review = gets.chomp

	print "Please rate this book. On a scale on 1 (not at all) to 10 (loved it)"
	rating_quality = gets.chomp

	print "Would you recommend this book to others? (y/n)"
	would_you_recommend = gets.chomp

	BookReview.new(reviewer: reviewer, short_review: short_review, rating: rating, would_you_recommend: would_you_recommend)

end

#--------------

#BUILD BOOK
#prompt the user to add the information to add a new book's information to the book array
def add_a_book
	puts "\n\nADD A NEW BOOK\n\n"
	print "What is the title of your new book? "
	title = gets.chomp

	print "... the author(s)? "
	author = gets.chomp


	print "Illustrator's name? "
	illustrator = gets.chomp

	# print "Is there an illustrator (y/n)? "
	# is_there_an_illustrator = gets.chomp

	# if is_there_an_illustrator?.downcase == "y"
	# 	print "What is the illustrator's name? "
	# 	illustrator = gets.chomp
	# end

	print "Please add the 13-digit ISBN number, using only numbers. "
	isbn = gets.chomp.to_i

	print "What year was the book written in? "
	year_written = gets.chomp

	#need default value for illustrator to be "none", in case there is none
	Book.new(title: title, author: author, illustrator: illustrator, isbn: isbn, year_written: year_written)

end


#--------------
# BOOK REVIEW REPORT

def book_review_report(book_review)
	puts "\nYou just added a new review.\n"
	puts "\nBOOK REVIEW\n\n"
	puts "reviewer:  #{book_review.reviewer} "
	puts "short_review:  #{book_review.short_review} "
	puts "rating:  #{book_review.rating} "
	puts "would_you_recommend:  #{book_review.would_you_recommend} "
end


#--------------
#BOOK REPORT

def book_report(book)
	puts "\nYou just added a new book.\n"
	puts "title:  #{book.title} "
	puts "author:  #{book.author} "
	puts "illustrator:  #{book.illustrator} "
	puts "isbn:  #{book.isbn} "
	puts "year_written:  #{book.year_written} "
end


#--------------
#REPORT ALL BOOK REVIEWS

def report_all_book_reviews(arr)
  arr.each do |book_review|
    book_review_report(book_review)
  end
end

#--------------
#REPORT ALL BOOKS

def report_all_books(arr)
  arr.each do |book|
    book_report(book)
  end
end


#--------------

#SELECT A BOOK

#--------------

#SELECT A BOOK REVIEW

#--------------

# Declaration of Variables


books = []
book_reviews = []

choice = 7

#MAIN MENU

puts "\nWELCOME TO THE BOOK TRACKER"
puts "---------------------------"

while choice != 0
  puts "\nYou have #{books.length} book(s)."
  puts "\nHere are your options:\n1. Add a New Book\n2. View Book Report\n3. New Book Review\n2. View Book Review Report\n0. Exit"
  puts "\nWhat is your choice? "
  print "---------------------\n"
  choice = gets.chomp.to_i

  if choice == 1
    books << add_a_book
    book_report(books.last)
  elsif choice == 2
    report_all_books(books)
  elsif choice == 3
    book_reviews << add_a_book_review
    book_review_report(book_reviews.last)
  elsif choice == 0
    puts "\n\nGoodbye!"
  else
    puts "\n\nSorry! Not a valid input"
  end
end
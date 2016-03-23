require "pry"
require_relative "lib/book.rb"
require_relative "lib/library.rb"
require_relative "lib/book_review.rb"

books = []
book_reviews = []
# def add_a_book

puts "\n\nADD A NEW BOOK\n"
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

# end
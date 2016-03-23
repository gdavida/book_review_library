class BookReview
  
  attr_accessor :review_write, :summary_text

  def initialize(options ={})
    @short_review           = options[:short_review]
    @summary_text           = options[:summary_text]
    @rating                 = options[:ratings]
    @reviewer               = options[:reviewer]
  end

  def short_140_character_review(short_review)
    if @short_review.length > 140
      "Your review is too long, no one's ever going to read it- especially not you. The review should be 140 characters or less, like this message."
    end
  end


  def rating_by_reviewer(date_added_to_library, book)
    "#{reviewer} gave #{book.title} a score of #{rating}."
  end

end

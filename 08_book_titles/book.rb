class Book
  attr_accessor :title
  
  def title
    always_lowercase_words = ["the", "and", "or", "a", "an", "in", "of"]
    title_array = @title.split
    capitalized_array = title_array.collect do |word|
      if always_lowercase_words.include?(word)
        word
      else
        word.capitalize
      end
    end
    capitalized_array.first.capitalize!
    capitalized_array.join(" ")
  end
end
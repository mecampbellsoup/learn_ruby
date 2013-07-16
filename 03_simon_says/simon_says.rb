require 'pry'

def echo string
  string
end

def shout string
  string.upcase
end

def repeat string, num_words=2
  array = Array.new(num_words, string)
  array.join(" ")
end

def start_of_word string, num_chars=1
  string[0, num_chars]
end

def first_word string
  string[0, string.index(" ")]
end

def titleize input
  words_to_lowercase = %w(or and the if but over)
  input_array = input.split(' ')

  capitalized_word_array = input_array.collect do |input_word|
    words_to_lowercase.include?(input_word) ? input_word : input_word.capitalize
  end
  
  capitalized_word_array.first.capitalize!
  capitalized_word_array.join(' ')
end

titleize "war and peace"

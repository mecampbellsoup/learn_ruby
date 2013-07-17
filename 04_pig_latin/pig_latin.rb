require 'pry'

def locate_vowel word
  vowels = %w( a e i o u y )
  array_of_letters = word.scan(/./)
  array_of_letters.each do |letter|
    if vowels.include? letter
      unless array_of_letters[array_of_letters.index(letter)-1] == "q"
        return array_of_letters.index(letter)
      else
        return array_of_letters.index(letter) + 1
      end
    end
  end 
end

def translate string
  words_array = string.split.collect do |word|
    if locate_vowel(word) == 0
      word = word + "ay"
    else #want cherry to become erry+ch+ay
      first_chars = word[0, locate_vowel(word)]
      word = word[locate_vowel(word), (word.length - first_chars.length)] + first_chars + "ay"
    end
  end
  words_array.join(" ")
end

p translate "quiet"
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

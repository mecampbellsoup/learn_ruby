def reverser
  yield.split.collect { |word| word.reverse }.join(" ")
end

def adder num=1
  yield.+num
end

def repeater num_times=1
  num_times.times do
    yield
  end
end
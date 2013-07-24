class Array
  def sum
    summation = 0
    self.collect do |int|
      summation += int
    end
    summation
  end

  def square
    self.collect do |int|
      int*int
    end
  end

  def square!
    self.each_with_index do |int,i|
      self[i] = int*int
    end
  end

end
require 'pry'

class RPNCalculator < Array

  # def method_missing(method, *args, &block)
  #   self.send(method, *args, &block)
  # rescue NoMethodError
  #   puts "calculator is empty"
  # end

  def plus  #store the result so can use later, but where?
    check_if_empty
    sum = self.pop + self.pop
    self.push(sum)
  end

  def minus
    check_if_empty
    var1 = self.pop
    var2 = self.pop
    difference = var2 - var1
    self.push(difference)
  end

  def times
    check_if_empty
    product = self.pop * self.pop
    self.push(product)
  end

  def divide
    check_if_empty
    var1 = self.pop.to_f
    var2 = self.pop
    quotient = var2 / var1
    self.push(quotient)
  end

  def value
   self.last
  end

  def tokens string
    array_of_strings = string.split
    array_of_strings.collect do |token|
      token.to_i == 0 ? token.to_sym : token.to_i
    end
  end

  def evaluate string
    intermed_array = tokens(string).reverse
    until intermed_array.empty?
      if intermed_array.last.kind_of?(Integer)
        self.push(intermed_array.pop)
      else intermed_array.last.kind_of?(Symbol)
        if intermed_array.last == :+
          self.plus
        elsif intermed_array.last == :-
          self.minus
        elsif intermed_array.last == :*
          self.times
        elsif intermed_array.last == :/
          self.divide
        end
        intermed_array.pop
      end
    end
    value
  end


  private

  def check_if_empty
    raise 'calculator is empty' if self.empty?
  end

end
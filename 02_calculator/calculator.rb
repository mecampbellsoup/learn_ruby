def add x,y
  x.+y
end

def subtract x,y
  x.-y
end

def sum array
  sum = 0
  array.collect {|i| sum += i}
  return sum
end

def multiply array
  if array.empty?
    raise "You need at least two numbers to perform multiplication!"
  end
  product = 1
  array.collect {|i| product *= i}
  return product
end

def power base, exp
  unless exp<2
    count = 2
    power = base * power(base, exp-1)
  else
    power = base
  end
end

def factorial num
  if num<0
    raise "Factorials can only be calculated on positive integers."
  end
  unless num<1
    factorial = num * factorial(num-1)
  else
    1
  end
end


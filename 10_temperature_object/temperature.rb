require 'pry'

class Temperature

  def initialize ( opts= {} )
    @options = opts
  end

  def in_fahrenheit
    @options[:f].nil? ? ctof(@options[:c]) : @options[:f]
  end

  def in_celsius
    @options[:c].nil? ? ftoc(@options[:f]) : @options[:c]
  end

  def self.from_celsius c
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit f
    Temperature.new(:f => f)
  end

  def ftoc f
    (f-32) * (5/9.to_f)
  end

  def ctof c
    c * 9/5.to_f + 32
  end

end

class Celsius < Temperature
  def initialize c
    @c = c
  end

  def in_fahrenheit
    ctof(c)
  end

  def in_celsius
    c
  end
end
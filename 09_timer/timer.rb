require 'pry'

class Timer
  
  attr_accessor :seconds, :minutes, :hours, :time_string
  
  def initialize seconds=0
    @seconds = seconds
  end

  def time_string
    (@seconds/3600)>0 ? @hours = (@seconds/3600) : @hours = 0
    ((@seconds/60)-(@hours*60))>0 ? @minutes = ((@seconds/60)-(@hours*60)) : @minutes = 0
    (@seconds - @hours*3600 - @minutes*60)>0 ? @seconds = (@seconds - @hours*3600 - @minutes*60) : 0
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded number
    "%02d" % number
  end
end


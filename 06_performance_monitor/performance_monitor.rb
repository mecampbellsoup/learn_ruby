def measure num=1
  start = Time.now
  num.times do |i|
    yield
  end
  average_elapse = (Time.now - start)/num
end

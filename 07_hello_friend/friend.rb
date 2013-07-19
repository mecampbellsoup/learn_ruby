class Friend
  def greeting (name=nil)
    "Hello#{name == nil ? nil : ", #{name}"}!"
  end
end


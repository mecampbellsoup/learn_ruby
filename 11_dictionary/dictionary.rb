class Dictionary
  attr_accessor :entries
  
  def initialize (opts={})
    @entries = opts
  end

  def add (key_or_hash)
    new_entry = key_or_hash.is_a?(Hash) ? key_or_hash : {key_or_hash => nil}
    @entries.merge!(new_entry)
  end

  def keywords
    self.entries.keys.sort #returns hash of keys in self
  end

  def values
    self.entries.values #returns hash of values in self
  end

  def include? key
    keywords.include? key
  end

  def find key
    self.entries.select {|k,v| k.include?(key)}
  end

  def printable
    self.entries.sort.collect {|k,v| "[#{k}] \"#{v}\"" }.join("\n")
  end

end
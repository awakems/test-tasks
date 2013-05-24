class Dictionary
  attr_accessor :entries

  def initialize
    @entries = Hash.new
  end
  
  def add (entry)
    if entry.class == Hash
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end
 
  def keywords
    @entries.keys.sort
  end

  def include?(key_name)
    @entries.keys.include?(key_name)
  end

end

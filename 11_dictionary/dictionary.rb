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

  def find (word)
    founded = {}

    @entries.each do |key, value|
      if key =~ /^#{word}/
        founded[key] = value
      end
    end
    founded
  end
  
  def printable
    print_out = []

    @entries.each do |key, value|
      print_out << %Q{[#{key}] "#{value}"}
    end

    return print_out.sort.join("\n")

  end
end

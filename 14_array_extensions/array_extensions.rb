class Array
  def sum
    if self == []
      return 0
    end
    self.inject (0) { |result, element| result + element}
  end

  def square
    if self == []
      return []
    end
    
    self.map {|element| element * element}
  end
  
  def square!
    self.map! {|element| element * element}
  end
end

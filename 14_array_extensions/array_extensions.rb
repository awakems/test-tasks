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
  
  end
end

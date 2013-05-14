class Book
  attr_reader :title

  def title=(some_name)
    @title = some_name.capitalize
  end
  
end

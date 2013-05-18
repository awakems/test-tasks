class Book
  attr_reader :title

  def title=(some_name)
    arr = ['and','over','a', 'an', 'the', 'of', 'in']
    fin = some_name.gsub(/\w+/) {|match| arr.include?(match) ? match : match.capitalize} 
    @title = fin[0].capitalize+fin[1..-1]
  end
  
end

def reverser
  mas = []
  words = yield
  words.split.map do |word|
   mas << word.reverse
  end
  mas.join(" ")
end

def adder
yield+1
end

def reverser
  mas = []
  words = yield
  words.split.map do |word|
   mas << word.reverse
  end
  mas.join(" ")
end

def adder (num=1)
yield+num
end


def repeater (num = 1)
num.times do yield
end
end

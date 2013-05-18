def add (num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum (arr=[])
  arr.inject(0) { |res, elem| res + elem }
end

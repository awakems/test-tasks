class RPNCalculator
  attr_accessor :stack
  def initialize (stack = [])
    @stack = stack
  end

  def push (one)
    stack << one
  end
 
  def value
    stack[stack.length - 1]
  end

  def plus
    stack << (stack.pop + stack.pop)
  end

  def minus
    stack << (stack.pop - stack.pop)
  end

  def divide
    stack << (stack.pop.to_f / stack.pop.to_f)
  end

  def times
    stack << (stack.pop.to_f * stack.pop.to_f)
  end
end

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
    stack << (pop + pop)
  end

  def minus
    stack << (pop - pop)
  end

  def divide
    stack << (pop.to_f / pop.to_f)
  end

  def times
    stack << (pop.to_f * pop.to_f)
  end

  def pop
    number = stack.pop
    if number.nil?
      raise "calculator is empty"
    end
    number
  end
end

class Temperature

 def initialize (opt ={})
   @farenheit =  opt [:f] || opt [:c]*9.0/5.0+32.0
   @celsius = opt [:c] || (opt [:f]-32.0)*5.0/9.0
 end

 def in_fahrenheit
   @farenheit
 end

 def in_celsius
   @celsius
 end
 
 def Temperature.from_celsius (celsius)
   Temperature.new(c: celsius)
 end

 def Temperature.from_fahrenheit (farenheit)
   Temperature.new(f: farenheit)
 end

end

class Celsius < Temperature
  def initialize (celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature 
  def initialize (farenheit)
    super(f: farenheit)
  end
end

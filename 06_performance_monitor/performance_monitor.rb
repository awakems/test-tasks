def measure
x=Time.now
yield
y=Time.now
y-x
end

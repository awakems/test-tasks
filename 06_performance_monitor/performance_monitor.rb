def measure (n=1)
z=0
n.times do
 x=Time.now
 yield
 y=Time.now
 z += y-x
 end
z/n
end

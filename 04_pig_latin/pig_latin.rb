def translate (sen)
sen.split.map {|x|
 if (x[0]=="a"|| x[0]=="i"||x[0]=="o"||x[0]=="u"||x[0]=="e")
x+"ay"
 else 
x[1..-1]+x[0]+"ay"
end}.join(" ")
end

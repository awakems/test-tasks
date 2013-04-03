def echo (hello)
hello
end

def shout (hello)
hello.upcase
end

def repeat (a='hello',b='2')
"#{a}"+(' '+"#{a}")*("#{b}".to_i-1)
end

def start_of_word (hello, num)
hello[0 .. num-1]
end

def first_word
end

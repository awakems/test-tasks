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

def first_word (text)
mas=text.split
mas[0]
end

def titleize (word)
arr = ['and','over','a', 'an', 'the']
fin=word.gsub(/\w+/) {|match| arr.include?(match) ? match : match.capitalize} 
fin[0].capitalize+fin[1..-1]
end

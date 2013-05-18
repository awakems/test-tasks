def translate (sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ('a'..'z').to_a - vowels
  sentence.split.map! {|x| if consonants.include?(x[0])

                          ((x[0]=="q") && (x[1]=="u")) ? x[2..-1] + x[0..1] + "ay":   #умова "qu"
                          consonants.include?(x[1]) && vowels.include?(x[2]) ? x[2..-1] + x[0..1] + "ay" : #умова початку з двох приголосних
                          consonants.include?(x[1]) && consonants.include?(x[2])? x[3..-1] + x[0..2] + "ay" : #умова початку з трьох приголосних
                          x[1..-1] + x[0] + "ay"

                      else 
                          x + "ay" #починається з голосної

                      end }.join(' ')
end

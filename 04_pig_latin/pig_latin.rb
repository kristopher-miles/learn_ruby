def isvowel? letter 
    if letter =="a" or letter =="e"or letter =="i"or letter=="o" or letter=="u" then
        true
    else
        false
    end
end

def process_word word
    letter = word[0...1]
    if isvowel?(letter.to_s) then
        #this is a vowel
        word = word + "ay"
    else
        #this isn't a vowel
        word = strip_to_vowel(word)+"ay"
    end
        word
end

def strip_to_vowel word
    letter = word[0...1]
    next_letter = word[1...2]
    if (letter=="q" and next_letter=="u") then
        word = word[2...word.length]+"qu"
    else
        word = word[1...word.length]+letter
    end
    letter = word[0...1]
    if not isvowel?(letter) then
        word = strip_to_vowel(word)
    end
    word
end
    
def translate input
   output = ""
    input.split.each do |word|
        output = output + " "+process_word(word)
    end
    output.strip
end
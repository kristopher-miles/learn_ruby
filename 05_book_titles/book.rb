class Book
    @title
    
# write your code here
    def shouldcap? word
        if (word =="on" or word =="and" or word =="in" or word =="the" or word =="with" or word =="of" or word =="a" or word =="an") then
            false
        else
            true
        end
    end
    def cap_word word
        if shouldcap? word then
            word.capitalize
        else
            word
        end
    end
        
    
    def caps input
        output = ""
        input.split.each do |word|
            if output =="" then
                output = word.capitalize
            else
                output = output + " "+ cap_word(word)
            end
        end
        output     
    end
    
    def title=(str)
        @title = caps(str)
    end  
    def title
        @title
    end
end

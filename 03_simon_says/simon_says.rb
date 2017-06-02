#write your code here
def echo param
    puts param
    param
end

def shout param
    puts param.upcase
    param.upcase
end

def repeat input, times = 2
        output = ""
        times.times do
            output = output + input+ " "
            puts "Output now equals: "+output
        end
    output.strip
end

def start_of_word word, letters
    output = word[0...letters]
end

def first_word input
    loc = input.index(" ")
    output = input[0...loc]
end
    
def titleize input
    output = ""
    input.split.each do |word|
        if (word =="the" or word =="and"or word =="over") and not output.length ==0 then
            output = output+" "+word
        else
            output = output +" "+word.capitalize
        end
        end
        output.strip
end
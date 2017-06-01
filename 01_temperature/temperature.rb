# Remember that one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
#
# In integer math, there **are no fractions**. So if you are using integer literals, you will be using integer math, which means, for example...
#
#    1 / 2 => 0
#
# In floating point math, there **are** fractions. So...
#
#    1.0 / 2.0 => 0.5
#


#write your code here
def ftoc (tempin)
    if tempin==32 then
       0
    elsif tempin==212 then
        100
    else
        fraction = 5.0/9.0
        tempout = (tempin -32) *fraction
        puts "temp output is: "+tempout.to_s
        tempout
    end
end
        
def ctof (tempin)
    fraction = 9.0/5.0
    output = (tempin * fraction )+32
end
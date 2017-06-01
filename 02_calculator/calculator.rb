#write your code here
def add param1, param2
    answer = param1 + param2 
end

def subtract (param1, param2)
   answer = param1 - param2 
end

def factorial base
  if base<= 1
    1
  else
    base* factorial( base - 1 )
  end
end

def sum array
    sum = 0.0
    array.each do |number|
        sum = sum + number
    end
    sum.to_f
end

def multiply array
    sum = 0.0
    done = false;
    array.each do |number|
        if not done then
            sum = number+0.0
            done = true
        else
            sum = sum * number
        end
    end
    sum.to_f
end
    
def power base, power
    output = 0
    power.times do
        if output == 0 then
            output = base +0.0
        else
            output = output *base
        end
    end
    output
end


class Timer
    
    def initialize
        @time_string = "00:00:00"
        @seconds = 0
    end
        
    def time_string
        @time_string
    end
    
    def seconds
        @seconds
    end
    def seconds=(input)
        @seconds = input
        format_time(input.to_i)
    end
    
    def format value
        value = value.to_s
        if value.length <2 then
            value = "0"+value.to_s
            value = format(value)
        end
        value.to_s
    end
     
    def format_time input
        output =""
        hours = 0
        while input>3600 do
            hours = hours +1
            input = input - 3600
        end
        minutes = 0
        while input>=60 do
            minutes = minutes+1
            input = input - 60  
        end
        secs = input.to_s
        
        output = ""+format(hours)+":"+format(minutes)+":"+format(secs)
        @time_string = output;
    end

end

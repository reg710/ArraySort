class Sorter
    
    def arrange(chaos)  
        looping = true
        while looping
            looping = false
            (0..(chaos.length - 2)).each do |x|
                if chaos[x] > chaos[x+1]
                    looping = true
                    temp = chaos[x]
                    chaos[x] = chaos[x + 1]
                    chaos[x + 1] = temp
                end
            end
        end
        return chaos
    end

end
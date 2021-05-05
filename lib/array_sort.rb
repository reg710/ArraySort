class Sorter
    
    def arrange(input_array)  
        looping = true
        while looping
            
            # By changing the bool to false here, it will only stay false if  
            # the input array never enters the if statement below, 
            # which is how I am testing to see if the array is sorted. 
            looping = false
                       
            # Loops through to check each item in the array
            # Had to use '.length - 2' to prevent out of bounds error, and because you 
            # don't need to check what is to the right of the last item
            (0..(input_array.length - 2)).each do |location|
                
                # Checks what is stored in the array against the information stored to it's right.
                # For ex, on the first loop, checks first item against second (the item to its right)
                # If the item on the right is greater than the initial item, swap their places in the array
                # If something needed to be swapped, the array is not finished sorting, which is why the looping must be reset to true                
                if input_array[location] > input_array[location + 1]
                    looping = true
                    #Used a temp variable so as not to lose the information before making the second swap
                    temp = input_array[location]
                    input_array[location] = input_array[location + 1]
                    input_array[location + 1] = temp
                end
            end
        end
        return input_array
    end

end
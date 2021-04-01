chaos = [3, 4, 1, 2]
temp_array = []
    
# Attempt 1 - doesn't work
if chaos != [1, 2, 3, 4]
    (0..chaos.length).each do |x|
        if chaos[x] < chaos[x+1]
            temp_array << chaos[x]
            temp_array << chaos[x+1]
        elsif x > (x + 1)
            temp_array << chaos[x+1]
        end
    end
end

# [3, 4, 1, 2]
# loop one
# temp = 3, 4

# loop two
# temp = 3, 4, 1

#loop three
# temp = 3, 4, 1, 1, 2 (error)

# Attempt 2 - doesn't work
if chaos != [1, 2, 3, 4]
    (0..chaos.length).each do |x|
        if chaos[x] < chaos[x+1]
            temp_array << chaos[x]
        elsif x > (x + 1)
            temp_array << chaos[x+1]
        end
    end
end

# [3, 4, 1, 2]
# loop one
# temp = 3

# loop two
# temp = 3, 1

#loop three
# temp = 3, 1, 1 (error)


# Attempt 3 - SUCCESS
# Thank you Jeremy!
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

print chaos

# [3, 4, 1, 2]
# loop one
# chaos = 3, 4, 1, 2

# loop two
# chaos = 3, 1, 4, 2

# loop three
# chaos = 3, 1, 2, 4

## After checking everything once
## would need to find a way to start the 
## loop over again for these next loops

# loop four
# chaos = 1, 3, 2, 4

# loop five
# chaos = 1, 2, 3, 4








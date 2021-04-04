## Given n non-negative integers representing an elevation map where the width of each bar is 1, 
 # compute how much water it can trap after raining.

require 'byebug'

module DP
    class TrappingRainWater
        
        attr_reader :array

        def initialize(array:)
            @array = array
        end

        def find_maximum_trapped

            dp_left = Array.new(array.length, 0)
            dp_right = Array.new(array.length, 0)

            dp_left[0] = array[0]

            for index in 1..array.length - 1 do
                dp_left[index] = [dp_left[index-1], array[index]].max
            end 

            dp_right[array.length-1] = array[array.length-1]
            for index in (array.length - 2).downto(0) do
                dp_right[index] = [dp_right[index+1], array[index]].max
            end

            water = 0
            for k in 0..array.length-1 do
                water += [dp_left[k], dp_right[k]].min - array[k]
            end
            water
        end

    end
end



puts DP::TrappingRainWater.new(array: [0,1,0,2,1,0,1,3,2,1,2,1]).find_maximum_trapped
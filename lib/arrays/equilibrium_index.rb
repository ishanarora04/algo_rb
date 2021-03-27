

module Sorting
    class EquilibriumIndex
        
        attr_reader :array, :length

        def initialize(array: nil)
            @array = array
            @length = array.length
        end

        def find_equilibrium_index 
            sum_left = [array[0]]
            for elem in array[1..length - 1]
                sum = sum_left[-1] + elem
                sum_left.append(sum)
            end
           
            sum_right = [array[-1]]
            for i in (length-2).downto(0) do
                sum = sum_right[0] + array[i] 
                sum_right.unshift(sum)
            end

            for i in 0..length-1 do
                if sum_left[i] == sum_right[i]
                    return i
                end
            end
            -1
        end

    end
end
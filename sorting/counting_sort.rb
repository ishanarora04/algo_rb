
module Sorting
    class CountingSort
        
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def sort

            min = @array.min
            max = @array.max
            diff = max - min + 1
            temp = [0] * diff

            for elem in @array do            
                temp[elem-min] += 1 
            end

            output = []
            for elem in 0..temp.length do
                for count in 1..temp[elem].to_i do
                    output.append(elem + min)
                end
            end

            for index in 0..@array.length do
                @array[index] = output[index]
            end

        end


    end
end
module Sorting
    class BubbleSort

        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def sort
            
            for c_o in 0..@array.length - 2 do 
                for c_i in c_o..@array.length - 1 do
                    if @array[c_i] < @array[c_o]
                        @array[c_i], @array[c_o]  = @array[c_o], @array[c_i]
                    end
                end
            end

        end

    end


end
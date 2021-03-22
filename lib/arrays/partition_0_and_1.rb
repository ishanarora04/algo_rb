module Arrays
    class Partition0And1
        
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def partition
            start = 0
            last = array.length - 1

            while start < last
                if array[start] == 1 and array[last] == 0
                    array[start], array[last] = array[last], array[start]
                end

                if array[start] == 0
                    start += 1
                end
                
                if array[last] == 1
                    last -= 1    
                end

            end
            array
        end

    end
end
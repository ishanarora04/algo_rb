module Sorting
    class InsertionSort

        attr_reader :array

        def initialize(array:nil)
            @array = array 
        end

        def sort
            unless (@array.nil? or @array.empty? or @array.length() == 1)
                k = 1
                while k < @array.length() do
                    current_elem = @array[k]
                    j = k
                    while j > 0
                        if current_elem > @array[j]
                            break
                        end
                        @array[j] = @array[j-1]
                        j = j - 1
                    end
                    @array[j] = current_elem
                    k = k + 1
                end
            end
            @array
        end
    end
end
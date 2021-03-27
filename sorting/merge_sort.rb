module Sorting
    class MergeSort
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def sort
            sort_helper(0, @array.length - 1)
        end

        private
        def sort_helper(low, high)
            if low < high
                mid = (low + high) / 2
                sort_helper(low , mid)
                sort_helper(mid + 1, high)
                merge(low, mid, high)
            end
        end

        def merge(low, mid, high)
            initial = low
            j = mid + 1

            temp = [0] * (high-low + 1)
            k = 0

            while initial <= mid && j <= high
                if @array[initial] < @array[j]
                    temp[k] = @array[initial]
                    initial = initial + 1
                else
                    temp[k] = @array[j]
                    j = j + 1
                end
                k = k + 1 
            end

            while initial <= mid
                temp[k] = @array[initial]
                initial = initial + 1
                k = k + 1
            end

            while j <= high
                temp[k] = @array[j]
                j = j + 1
                k = k + 1
            end

            for index in 0..temp.length - 1 do
                @array[index + low] = temp[index]
            end
            
        end

    end
end
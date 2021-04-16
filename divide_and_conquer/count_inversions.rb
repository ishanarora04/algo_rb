require 'byebug'

module DivideAndConquer
    class CountInversions
        
        attr_reader :array, :inversion_count

        def initialize(array:)
            @array = array
            @inversion_count = 0
        end
   
        
        def count
            n = array.length - 1 
            count_helper(0, n)
            inversion_count
        end

        private

        def count_helper(low, high)
            if low  < high
                mid = (low + high)/2
                count_helper(low, mid)
                count_helper(mid + 1, high)
                merge_and_count(low, mid, high)
            end
        end


        def merge_and_count(low, mid, high)
            
            initial = low
            j = mid + 1

            temp = Array.new(high - low + 1, 0)

            debugger

            k = 0
            while initial <= (mid) and j <= high
                if array[initial] <= array[j]
                    temp[k] = array[initial]
                    @inversion_count += 0
                    initial += 1
                else
                    temp[k] = array[j]
                    @inversion_count += mid - initial + 1
                    j += 1
                end
                k = k + 1
            end

            for val in initial..mid
                temp[k] = array[val]
                k += 1
            end

            for val in j..high
                temp[k] = array[val]
                k += 1
            end

            for index in 0..temp.length - 1
                array[index + low] = temp[index]
            end

        end

    end
end

puts DivideAndConquer::CountInversions.new(array: [8, 4, 2, 1]).count
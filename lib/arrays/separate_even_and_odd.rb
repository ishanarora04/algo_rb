## 
# Seperate even and odd numbers using partition method for separating 0's and 1's
# Time complexity: O(n)
# Space complexity: O(1)

module Arrays
    class SeparateEvenAndOdd

        attr_reader :array

        def initialize(array:nil)
            @array = array
        end

        def separate_even_and_odd
            start = 0
            last = array.length-1

            while start < last
                if array[start] % 2 == 0 and array[last] %2 != 0
                    array[start], array[last] = array[last], array[start]
                end

                if array[start] % 2 != 0
                    start += 1
                end

                if array[last] % 2 == 0
                    last -= 1
                end
            end
            array
        end
    end
end
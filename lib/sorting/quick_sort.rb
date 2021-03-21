require 'byebug'

module Sorting
    class QuickSort
        attr_reader :array

        def initialize(array: nil)
            @array = array 
        end

        def sort
            sort_helper(0, @array.length- 1)
        end

        private

        def sort_helper(low, high)
            if low >= high
                return
            end
            pi = partition(low, high)
            sort_helper(low, pi-1)
            sort_helper(pi + 1, high)
        end

        def partition(low, high)
            pivot = @array[high]
            index = low - 1

            for counter in low..high-1 do
                if @array[counter] < pivot
                    index = index + 1
                    swap(counter, index)
                end
            end

            swap(index+ 1, high)
            index + 1
        end


        def swap(i, j)
            @array[i], @array[j] = @array[j], @array[i]
        end

    end
end
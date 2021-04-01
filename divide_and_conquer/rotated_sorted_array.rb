## Select an element in sorted rotated array
# sorted rotated array means, the array was sorted and then some elements were picked and rotated.
# eg: 1 2 3 4 5 6 7 8 9 10 became
# 7, 8, 9, 10, 1, 2, 3, 4, 5, 6
# and we need to search for some element in this array.

#require 'byebug'

module DivideAndConquer
    class RotatedSortedArray
    
        attr_reader :array, :num
        
        def initialize(array:)
            @array = array
        end

        def search(num)
            search_helper(0, array.length-1, num)
        end
        
        def search_helper(low, high, num)

            #debugger

            if low < high
                mid = (low + high)/2
                if array[mid] == num
                    return mid
                end
                
                if array[mid+1] < array[high]
                    if  num >= array[mid + 1] and num <= array[high]
                        return binary_search(mid + 1, high, num)
                    else
                        return search_helper(low, mid-1, num)
                    end
                end


                if array[low] < array[mid - 1] 
                    if num >= array[low] and num <= array[mid-1]
                        return binary_search(low, mid - 1, num)
                    else
                        return search_helper(mid + 1, high, num)
                    end
                end
            end
                
            -1
        end

        def binary_search(low, high, num)
            if low < high
                mid =  (low + high)/2
                if array[mid] == num
                    return mid
                elsif num >= array[low] and num <= array[mid-1]
                    return binary_search(low, mid - 1, num)
                elsif num >= array[mid+1] and num <= array[high]
                    return binary_search(mid + 1, high, num)
                else 
                    -1
                end
            end
            -1    
        end

    end
end


puts DivideAndConquer::RotatedSortedArray.new(array: [1]).search(0)
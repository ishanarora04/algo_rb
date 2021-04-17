# ou are given a one dimensional array that may contain both positive and negative integers, 
#  find the sum of contiguous subarray of numbers which has the largest sum.
#  For example, if the given array is {}, 
#  then the maximum subarray sum is 7 (see highlighted elements).


# Brute force => for each i..j we add all the members are convery. Use space to precalculate; 
# still we will have to visit each i..j


require 'byebug'

module DivideAndConquer
    class MaxSubArraySum

        attr_reader :array

        def initialize(array:)
            @array = array
        end


        def find_sum
            find_sum_helper(0, array.length-1)        
        end

        private


        def find_sum_helper(low, high)

            if low == high
                return array[low]
            end
                
            mid = (low + high)/2

            #debugger

            k1 = find_sum_helper(low, mid)
            k2 =  find_sum_helper(mid + 1, high)
            k3 = combine(low, mid ,high)
            k4 =  [ k1, k2 , k3 ].max
            k4
                
        end


        def combine(low, mid, high)

            ls = 0
            left_sum = -1000000000000
            
            for index in (mid).downto(low)
                ls = ls + array[index]
                if ls > left_sum
                    left_sum = ls
                end
            end

            rs = 0  
            right_sum = -10000000000000

            for index in mid + 1..high
                rs = rs + array[index]
                if rs > right_sum
                    right_sum = rs
                end
            end

            return [left_sum, right_sum, left_sum + right_sum].max
            
        end


    end
end


puts DivideAndConquer::MaxSubArraySum.new(array: [-2, -5, 6, -2, -3, 1, 5, -6]).find_sum
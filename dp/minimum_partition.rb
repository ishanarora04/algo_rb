## Given a set of integers, the task is to divide it into two sets S1 and S2 such that the absolute difference between their sums is minimum. 
 # If there is a set S with n elements, then if we assume Subset1 has m elements, 
 # Subset2 must have n-m elements and the value of abs(sum(Subset1) – sum(Subset2)) should be minimum.


module DP
    class MinimumPartiton
        
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def find_min(s1=0, s2=0, i=0)
            if i == array.length
                 return (s1-s2).abs
            else   
                return [find_min(s1+array[i], s2, i + 1), find_min(s1 , s2 + array[i], i + 1)].min
            end    
        end
    end
end

puts DP::MinimumPartiton.new(array: [3, 1, 4, 2, 2, 1]).find_min
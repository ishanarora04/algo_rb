require 'byebug'

module Arrays
    class SubArrayWithSum0
        
        attr_reader :array

        def initialize(array:)
            @array = array
        end

        def find_subarray
            hash = {array[0] => 1}
            prev_sum = array[0]
            for index in 1..array.length-1 
                new_sum = prev_sum + array[index]
                prev_sum = new_sum
                if hash[new_sum] 
                    hash[new_sum] += 1
                else 
                    hash[new_sum] = 1
                end
            end
            hash.each do |elem, key| 
                if key > 1 
                    return true
                end
            end

            if hash[0] 
                return true
            end

            return false
            
        end
    
    end
end

puts Arrays::SubArrayWithSum0.new(array: [-3, 2, 3, 1, 6]).find_subarray
puts Arrays::SubArrayWithSum0.new(array: [4, 2, -3, 1, 6]).find_subarray

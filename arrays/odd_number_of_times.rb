##
# Find the number occuring odd number of times in an array of size n given that exactly one number occurs odd
# number of times


module Arrays
    class OddNumberOfTimes
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def find_elem_occuring_odd_number_of_times!
            xor_v = array[0]
            for index in 1..array.length-1 do
                xor_v ^= array[index]
            end
            xor_v
        end

    end
end
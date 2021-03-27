
module Arrays
    class FindPairSum
        attr_reader :array
        def initialize(array: nil)
            @array = array
        end 

        def find_pair_exists(sum)
            for i in range 0..array.length-1 do
                for j in range 0..array.length - 1 do
                    if i!=j and (array[i] + array[j] == sum)
                        return True
                    end
                end
            end
            False
        end

    end
end
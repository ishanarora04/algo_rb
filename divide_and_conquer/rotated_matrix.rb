module DivideAndConquer
    class RotatedMatrix
    
        attr_reader :array, :n

        def initialize(array:)
            @array = array
            @n = array[0].length
        end

        def rotate_matrix
            for index in 0..n/2 do
                width = n - index - 1
                for k in index..width - 1 do
                    temp = array[index][k]
                    array[width-k][index], temp = temp, array[width-k][index]
                    array[width][width-k], temp = temp , array[width][width-k]
                    array[k][width], temp = temp, array[k][width]
                    array[index][k] = temp
                end
            end
            for k in array 
                print k
                puts
            end
        end
    end
end

puts DivideAndConquer::RotatedMatrix.new(array: [[1,2,3, 4], [5, 6, 7, 8], [9,10, 11, 12],[13, 14, 15, 16]]).rotate_matrix




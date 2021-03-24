## Given a N*N board with the Knight placed on the first block of an empty board.
 # Moving according to the rules of chess knight must visit each square exactly once. 
 # Print the order of each the cell in which they are visited.
require 'byebug'

module Backtrack
    class KnightsTour 
        
        attr_reader :array, :length, :solution

        def initialize(n:1)
            @length = n
            @array = Array.new(n) { Array.new(n, false)}
            @solution = []
        end        

        def visit_order
            unless length == 0 or length == 1 or length == 2
                visit_planned(0, 0, 1)
                debugger
                solution.each do |elem|
                    puts "%s_%s" % [elem[0], elem[1]]
                end
                solution.length
            else 
                'No steps allowed'
            end

        end

        private
        def steps
            [[1,2], [2, 1], [-1,-2], [-2, -1], [-1, 2], [2, -1], [-2, 1], [1, -2]]
        end

        def check_inside?(x, y)
            x >= 0 and x < length and y >= 0  and y < length
        end

        def visited?(x,y)
            array[x][y]
        end

        def visit_planned(x, y, move_count)

            if move_count == length * length
                return true
            end

            array[x][y] = true

            for elem in 0..7 do
                x_new = x + steps[elem][0]
                y_new = y + steps[elem][1] 

                #debugger

                if check_inside?(x_new, y_new) and !visited?(x_new,y_new)
                    solution.push([x_new, y_new])
                    if (visit_planned(x_new, y_new, move_count + 1))
                        return true;
                    else
                        solution.pop
                        array[x_new][y_new] = false
                    end
                end
            end
            return false;
        end

    end
end


puts Backtrack::KnightsTour.new(n:8).visit_order
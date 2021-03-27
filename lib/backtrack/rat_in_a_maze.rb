## A Maze is given as N*N binary matrix of blocks where source block is the upper left most block i.e.,
 # maze[0][0] and destination block is lower rightmost block i.e., maze[N-1][N-1]. 
 # A rat starts from source and has to reach the destination.
module Backtrack
    class RatInAMaze 
        
        attr_reader :grid, :length, :solution

        def initialize(grid: nil)
            @grid = grid
            @length = grid.length
            @solution = []
        end

        def explore
            solution.append([0, 0])
            explore_helper(0,0)            
            print_solution
        end

        private

        def steps 
            [[0,1], [1,0]]
        end

        def check_inside?(x,y)
            x.between?(0, length-1) and y.between?(0, length-1)
        end

        def explore_helper(x, y)
            
            if x == length - 1 and y == length - 1 and grid[x][y] == 1
                return true
            end

            for elem in steps
                x_new = x + elem[0]
                y_new = y + elem[1]
                if check_inside?(x_new, y_new) and grid[x_new][y_new] == 1
                    solution.append([x_new, y_new])
                    if (explore_helper(x_new, y_new))
                        return true
                    else
                        solution.pop
                    end
                end
            end
            return false
        end

        def print_solution
            output = Array.new(length) {Array.new(length, 0)}
            for elem in solution
                output[elem[0]][elem[1]] = 1
            end
            for row in output
                for elem in row
                    print " #{elem}" 
                end
                puts
            end
        end
    end
end
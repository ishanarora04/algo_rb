## Subset sum problem is to find subset of elements that are selected from a given set whose sum adds up to a given number K.
 # We are considering the set contains non-negative values. 
 # It is assumed that the input set is unique (no duplicates are presented).
module Backtrack
    class SubsetSum 
        
        attr_reader :array, :solution, :final_solution

        def initialize(array: nil) 
            @array = array
            @final_solution = []
        end

        def find_subset_sum(k)
            find_subset_sum_helper(0, k, [])
            final_solution
        end

        private

        def find_subset_sum_helper(i, k, sol)
            
            if i >= array.length or k < 0
                return false
            end
    
            if k == 0
                final_solution.append(sol.dup)
                return true
            end

            sol.append(array[i])
            find_subset_sum_helper(i + 1, k - array[i], sol)
            sol.pop
            find_subset_sum_helper(i + 1, k, sol)

            return false
        end 
    end
end
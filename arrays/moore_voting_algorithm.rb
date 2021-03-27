require 'byebug'

##
# Moore voting Algorithm to calculate whether a number occurs more than n/2 times in an array


module Arrays
    class MooreVotingAlgorithm 
        
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def element_exist?

            voter = -1
            votes = 0

            for index in 0..array.length - 1 do
                if votes == 0
                    voter = array[index]
                    votes += 1
                else
                    if array[index] == voter
                        votes += 1
                    else
                        votes -= 1
                    end
                end
            end            
            votes >= 1
        end

    end
end
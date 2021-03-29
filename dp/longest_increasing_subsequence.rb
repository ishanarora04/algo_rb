require 'byebug'

module DP
    class LongestIncreasingSubsequence
        
        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def find
            n = array.length
            dp = Array.new(n, 0)

            dp[0] = 1

            for i in 1..n-1 do
                dp[i] = 1
                for j in 0..i do
                    if array[i] > array[j] 
                        dp[i] = [dp[j] + 1, dp[i]].max
                    end
                end
            end
            dp[n-1]
        end
    end
end

puts DP::LongestIncreasingSubsequence.new(array: [10, 22, 9, 33, 21, 50, 41, 60, 80]).find
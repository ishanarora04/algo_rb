## Given two strings str1 and str2 and below operations that can performed on str1. 
 # Find minimum number of edits (operations) required to convert ‘str1’ into ‘str2’.  
 # Insert
 # Remove
 # Replace
module DP
    class EditDistance 
        
        attr_reader :str1, :str2

        def initialize(str1:, str2:)
            @str1 = str1
            @str2 = str2
        end 

        def find
            n = str1.size
            m = str2.size

            dp = Array.new(n+1) { Array.new(m+1, 0)}
            
            for i in 1..n do
                dp[i][0] = i
            end

            for j in 1..m do
                dp[0][j] = j
            end

            for i in 1..n do
                for j in 1..m do
                    if str1[i-1] == str2[j-1]
                        dp[i][j] = dp[i-1][j-1]
                    else
                        dp[i][j] = 1 + [dp[i-1][j-1], dp[i-1][j], dp[i][j-1]].min
                    end
                end
            end
            dp[n][m]
        end

    end
end

puts DP::EditDistance.new(str1: 'cat', str2: 'cut').find
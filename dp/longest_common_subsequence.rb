module DP
    class LongestCommonSubsequence
        
        attr_reader :str1, :str2

        def initialize(str1:, str2:)
            @str1 = str1
            @str2 = str2
        end

        def find
            n = str1.size
            m = str2.size

            dp = Array.new(n + 1) {Array.new(m + 1, 0)}
            for i in 1..n do
                for j in 1..m do
                    if str1[i-1] == str2[j-1] 
                        dp[i][j] = 1 + dp[i-1][j-1]
                    else
                        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
                    end    
                end
            end
            dp[n][m]
        end

    end
end

puts DP::LongestCommonSubsequence.new(str1: 'ABCDGH', str2: 'AEDFHR').find
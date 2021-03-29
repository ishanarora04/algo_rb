module DP
    class LongestCommonSubsequenceRecursive
        
        attr_reader :str1, :str2
       
        def initialize(str1: , str2: )
            @str1 = str1
            @str2 = str2
        end

        def find
            find_helper(str1.size-1, str2.size-1)
        end

        private 

        def find_helper(m, n)
            if m < 0 || n < 0
                return 0
            elsif str1[m] == str2[n]
                return 1 + find_helper(m-1 , n-1)
            else
                return [find_helper(m-1, n), find_helper(m, n-1)].max
            end
        end

    end
end

#puts DP::LongestCommonSubsequenceRecursive.new(str1: 'AGGTAB', str2: 'GXTXAYB').find
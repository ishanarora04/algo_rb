module Miscellaneous
    class BracketCombination 
        
        attr_reader :num, :output

        def initialize(num: 0)
            @num = num
            @output = []
        end

        def generate
            generate_helper(left: 0, right: 0, current: '')
            output
        end

        def generate_helper(left: 0, right: 0, current: '')

            if right > left
                return
            end

            if left == num and right == num
                output.append(current)
            end

            if left + 1 <= num
                generate_helper(left: left + 1, right: right, current: current + '(')
            end
            
            if right + 1 <= num
                generate_helper(left: left, right: right + 1, current: current + ')' )
            end
        end

    end
end

#puts Miscellaneous::BracketCombination.new(num: 4).generate
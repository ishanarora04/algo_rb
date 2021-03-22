require "minitest/autorun"
require_relative '../../lib/arrays/max_difference'

class MaxDifferenceTest < Minitest::Test
    
    def test_max_difference
        obj = Arrays::MaxDifference.new(array: [8, 91, 22, 100, 1])
        assert_equal obj.max_diff!, 99
    end

end    

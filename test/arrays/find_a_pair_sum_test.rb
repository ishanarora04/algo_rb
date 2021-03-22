require "minitest/autorun"
require_relative '../../lib/arrays/find_a_pair_sum'

class FindPairSumTest < Minitest::Test
    
    def test_find_pair_exists
        obj = Arrays::FindPairSum.new(array: [8, 91, 22, 100, 1])
        assert(obj.find_pair_exists(99), 'Error')
    end

end    

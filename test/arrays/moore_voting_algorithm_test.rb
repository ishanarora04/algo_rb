require "minitest/autorun"
require_relative '../../arrays/moore_voting_algorithm'

class MooreVotingAlgorithmTest < Minitest::Test
    
    def test_element_exists
        obj = Arrays::MooreVotingAlgorithm.new(array: [8, 8, 8, 8, 8, 91, 22, 100, 1])
        assert(obj.element_exist?, 'Error')
    end

    def test_element_does_not_exists
        obj = Arrays::MooreVotingAlgorithm.new(array: [8, 8, 8, 8, 91, 22, 100, 1])
        assert_equal obj.element_exist?, false
    end

end    

require "minitest/autorun"
require_relative '../../sorting/counting_sort'

class CountingSortTest < Minitest::Test
    
    def test_array_sorts
        is = Sorting::CountingSort.new(array: [3, 2, 1, 100, 200, 11, 22, 3, 4, 5])
        is.sort()
        assert_equal is.array.first(3), [1, 2, 3]
    end

end    

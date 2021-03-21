require "minitest/autorun"
require_relative '../../lib/sorting/quick_sort'

class MergeSortTest < Minitest::Test
    
    def test_array_sorts
        is = Sorting::QuickSort.new(array: [3, 2, 1, 100, 200, 21000, 11001,1100, 110000, 11, 22,3,4,5])
        is.sort()
        assert_equal is.array.first(3), [1, 2, 3]
    end

end    

require "minitest/autorun"
require_relative '../../sorting/insertion_sort'

class InsertionSortTest < Minitest::Test
    
    def test_nil_array_return_nil
        is = Sorting::InsertionSort.new()
        assert_nil is.sort(), nil
    end

    def test_empty_array_returns_empty
        is = Sorting::InsertionSort.new(array: [])
        assert_equal is.sort(), []
    end

    def test_single_length_array_returns_same_array
        is = Sorting::InsertionSort.new(array: [1])
        assert_equal is.sort(), [1]
    end

    def test_array_sorts
        is = Sorting::InsertionSort.new(array: [3, 2, 1])
        assert_equal is.sort(), [1, 2, 3]
    end


end    

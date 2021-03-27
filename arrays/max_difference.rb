require_relative '../sorting/merge_sort.rb'

module Arrays
    class MaxDifference

        attr_reader :array

        def initialize(array: nil)
            @array = array
        end

        def max_diff!
            ms = Sorting::MergeSort.new(array: array.dup)
            ms.sort()
            ms.array.last - ms.arrayfirst
        end

    end
end
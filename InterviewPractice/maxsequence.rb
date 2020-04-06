
# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

## input - array of integers
## output - sub-array that is maximum of any sequence of array

## If all integers are negative then return 0
## Return empty list if input array is empty

## Find all subarrays of the array, take the sum of each
##. REturn the max sum of those

def maxSequence(arr)
  
  return [] if arr.empty?
  return 0 if arr.all? { |num| num.negative? }
  size = arr.size
  max_sum = 0
  0.upto(size - 1) do |start_idx|
    start_idx.upto(size - 1) do |end_idx|
      if arr[start_idx..end_idx].sum > max_sum
        max_sum = arr[start_idx..end_idx].sum
      end
    end
  end
  max_sum   
end

p maxSequence([-3, 4, 5,0, 2])

p maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])

# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position of the array, the sum of left side of the index [1,2,3] and the sum of the right side of the index [3,2,1] both equal 6.

# Another one:
# You are given the array [20,10,-80,10,10,15,35]
# At index 0 the left side is []
# The right side is [10,-80,10,10,15,35]
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

## input - array of integers
## output - integer that represents index where sum of integers to left and sum of integers to right
##          is equal

#Iterate from index 0 of array up to last index of array.
# Create an array of values up to current index, called left_array
# Create an array of values after current index to end, called right_array.
# Check if the sum of left_array and right_array are equal, return index if they are

# After interating through all indexes, if an index isn't returned, return -1

def find_even_index(array)
  array.size.times do |i|
    left_array = array[0...i]
    right_array = array[(i+1)..-1]
    return i if left_array.sum == right_array.sum
  end
  -1
end
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3





## input - array of integers
## output - integer that represents index where sum of integers to left and sum of integers to right are equal.  (Don't include current index)
# def find_even_index(array)

#   size = array.size
#   return 0 if array[1..-1].sum == 0 
#   return (size - 1) if array[0..-2].sum == 0
#     1.upto(size - 2) do |idx_array|
#     array_left_total = 0
#     array_right_total = 0
#       0.upto(idx_array - 1) do |i|
#         array_left_total += array[i]
#       end
#       (idx_array + 1).upto(size - 1) do |i|
#         array_right_total += array[i]
#       end
#       return idx_array if array_left_total == array_right_total
#     end
#   -1
# end

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
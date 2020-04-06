
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# sorted_arr = arr.map do |array|
#   array.sort do |a, b|
#     b <=> a
#   end
# end

# p sorted_arr

## input -  array of arrays called arr
## output - new array of arrays, ordered in descending order for each subarray

## Initialize new empty array called arr_sorted
## Iterate over arr, use map, use subarray as block variable 
##   sort each sub_array and add to arr_sorted
## Return arr_sorted

def sort_subarrays(arr)
  arr_sorted = []

  arr_sorted = 
    arr.map do |subarray|
      subarray.sort do |a, b|
        b <=> a
      end
    end
  arr_sorted
end

p sort_subarrays(arr)

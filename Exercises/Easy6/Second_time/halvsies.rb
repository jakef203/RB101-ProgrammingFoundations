
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

## input - array
## output - array with nested arrays, split by directions above

## left array for even do (0...size / 2 ), for odd (0..size / 2)
## right array, for even

def halvsies(arr)
  
  left_array = []
  right_array = []
  middle_index = arr.size / 2
  if arr.size.even?
    left_array = arr[0...middle_index]
    right_array = arr[middle_index..-1]
  elsif
    left_array = arr[0..middle_index]
    right_array = arr[(middle_index + 1)..-1]
  end
  [left_array, right_array]
end





p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
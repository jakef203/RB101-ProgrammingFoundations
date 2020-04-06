
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
  
## input - two arrays of integers of equal size
## output - an array with elements that are products of first two at same index

## Get size of input array
## use size.times
##.   for each iteration, multiply arr1, and arr2 at that index and append to new_arr
## Return new array

def multiply_list(arr1, arr2)
  size = arr1.size
  new_arr = []
  
  size.times do |i|
    new_arr << (arr1[i] * arr2[i])
  end
  new_arr
end
    



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
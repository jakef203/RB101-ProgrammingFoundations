
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.
  
## input - two arrays of integers
## output - array that contains integers that are products of all combinations from first two arrays

## Initialize a new_array that is empty

## Iterate through arr1, and arr2 items within arr1
##. Multiply arr1 and arr2 values, append to new_arr
## REturn new_arr

def multiply_all_pairs(arr1, arr2)
  
  new_arr = []
  
  arr1.each do |item1|
    arr2.each do |item2|
      new_arr << item1 * item2
    end
  end
  new_arr.sort
end

# p multiply_all_pairs([1, 2, 3], [5, 4])




p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
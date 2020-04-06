

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

## input - two arrays
## outpu - array with values of two input arrays, no repeat values

## new_array = arr1 + arr2

def merge(arr1, arr2)
  
  new_arr = arr1 + arr2
  new_arr.sort!
  new_arr.uniq!
  
end

p merge([6, 3, 5, 7], [3, 6, 9]) #== [1, 3, 5, 6, 9]
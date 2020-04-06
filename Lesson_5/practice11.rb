
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

## input - array of subarrays of integers
## output - array with subarrays that just contain integers that are multiples of 3

## Initialize a new empty array called arr_mult_3
## Iterate through the main array using map, call block variable subarray
##   For each subarray, select integers that are multiples of 3
## Return arr_mult_3
##  

def multiples_of_three(arr)
  arr_mult_3 = 
    arr.map do |subarray|
      subarray.select { |int| int % 3 == 0 }
    end
  arr_mult_3
end  

p multiples_of_three(arr)



# a = arr.map do |num_arr|
#   num_arr.select do |num|
#     num % 3 == 0
#   end
# end

# p arr
# p a
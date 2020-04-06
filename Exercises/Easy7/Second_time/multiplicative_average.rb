
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

## input - array of integers
## output - average of the integers, rounded to 3 decimal places

## Get sum of the three integers using arr.sum
## Divide that by arr.size
## puts to the screen the result

def show_multiplicative_average(array)
  
  sum = array.sum
  size = array.size
  
  result = sum.to_f / size
  
  puts format("The result is %.3f", result)
end


show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
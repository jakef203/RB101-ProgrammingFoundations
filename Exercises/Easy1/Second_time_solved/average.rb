
def average(arr)
  
  size = arr.size
  
  sum_arr = arr.sum
  
  sum_arr / size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

arr = [[1, 3, 9], [1, 4, 9], [1, 8, 5]]

## input - an array of subarrays
## output - array of subarrays ordered by third digit of subarray

sorted = arr.sort_by do |subarray|
            subarray.select { |num| num.odd? }
end
p
p sorted




# sorted = arr.sort_by do |item|
#   item[2]
# end

# ## Their solution, wouldn't work if select makes uneven arrays, for example if you had
# ## [[1, 6, 7], [1, 5, 9], [1, 8, 3]] as input after selection they become [1,7], [1,5,9], and [1,3]
# ## so final would be [1,8,3], [1,5,9], [1, 6, 7]
# sorted = arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end

# p sorted


## This orders by: odds are compared directly, all odd #s are < even #.
# def transform(array)
#   new_array = [] 
#   array.each do |num|
#     if num.even?
#       new_array << 9
#     else
#       new_array << num - 1
#     end
#   end
#   new_array
# end
# arr = [[1, 6, 7], [1, 5, 9], [1, 8, 3]]

# sorted = arr.sort do |a, b|
#   transform(a) <=> transform(b)
# end

# p sorted

# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

## input - array
## output - input array in reverse order, a new array, original input not modified

## #Initialize a new empty array
## Get size of original array
## Iterate through original array
##.  new_arr.unshift(item)
## Return that newarray

def reverse(array)
  
  new_array = []
  
  array.each do |item|
    new_array.unshift(item)
  end
  new_array
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]
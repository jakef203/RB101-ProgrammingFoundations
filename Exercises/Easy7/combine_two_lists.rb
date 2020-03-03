
# def interleave(arr1, arr2)
#   new_array = []
#   arr1.size.times do |i|
#     new_array << arr1[i]
#     new_array << arr2[i]
#   end
#   new_array
# end

# def interleave(arr1, arr2)
#   new_array = []
#   arr1.each_with_index do |element, idx|
#     new_array << element << arr2[idx]
#   end
#   new_array
# end

##Bonus
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

 


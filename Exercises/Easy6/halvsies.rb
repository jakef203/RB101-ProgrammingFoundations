
# def halvsies(array)
#   arr1 = []
#   arr2 = []
#   array.each_with_index do |item, idx|
#     if idx < array.size / 2 || (array.size.odd? && idx == array.size / 2)
#       arr1 << item
#     else
#       arr2 << item
#     end
#   end
#   [arr1, arr2]
# end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  arr1 = array.slice(0, middle)
  arr2 = array.slice(middle, array.size-middle)
  [arr1, arr2]
end
  

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
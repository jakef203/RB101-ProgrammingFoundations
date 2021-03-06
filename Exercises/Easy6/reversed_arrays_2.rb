
# def reverse(array)
#   new_array = []
#   array.each { |item| new_array.unshift(item) }
#   new_array
# end

## Using each_with_object
# def reverse(array)
#   array.each_with_object([]) do |item, new_array|
#     new_array.unshift(item)
#   end
# end

## Their solution
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1] 

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []
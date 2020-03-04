
# def multiply_lists(arr1, arr2)
#   product_array = []
#   idx = 0
#   until idx == arr1.size
#     product_array << arr1[idx] * arr2[idx]
#     idx += 1
#   end
#   product_array
# end

# def multiply_lists(list1, list2)
#   product = []
#   list1.each_with_index do |item, idx|
#     product << item * list2[idx]
#   end
#   product
# end

## Using zip
def multiply_lists(list1, list2)
  list1.zip(list2).map { |x, y| x * y }
end
list1 = [3, 5, 7]
list2 = [9, 10 , 11]
puts list1.object_id
puts list2.object_id
puts multiply_lists(list1, list2) == [27, 50, 77]
puts list1
puts list1.object_id
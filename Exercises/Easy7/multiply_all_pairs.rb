
# def multiply_all_pairs(list1, list2)
#   product = []
  
#   list1.each do |item1|
#     list2.each do |item2|
#       product << item1 * item2
#     end
#   end
#   product.sort
# end

def multiply_all_pairs(list1, list2)
  list1.product(list2).map { |num1, num2| num1 * num2 }.sort
end

list1 = [2, 4]
list2 = [4,3,1,2]
p list1.product(list2)

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
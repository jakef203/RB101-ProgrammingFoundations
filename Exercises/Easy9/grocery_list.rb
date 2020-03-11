
# def buy_fruit(list)
#   new_list = []
#   list.each do |fruit, quantity|
#     quantity.times { |i| new_list << fruit }
#   end
#   new_list
# end

# def buy_fruit(list)
#   new_list = list.map do |fruit, number|
#     [fruit] * number
#   end
#   new_list.flatten
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  

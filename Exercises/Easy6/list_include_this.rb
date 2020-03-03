
# def include?(array, item_search)
#   array.each { |item| return true if item_search == item }
#   false
# end

def include?(array, item_search)
  !!array.find_index(item_search)
end

# puts include?([1,2,3,4,5], 3) == true
# puts include?([1,2,3,4,5], 6) == false
# puts include?([], 3) == false
# puts include?([nil], nil) == true
# puts include?([], nil) == false

p include?([1,2,3,4,5], 3) 
p include?([1,2,3,4,5], 6) 
p include?([], 3) 
p include?([nil], nil) 
p include?([], nil) 
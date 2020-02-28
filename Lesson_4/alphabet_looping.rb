
def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    
    numbers[counter] *= 2

    counter += 1
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
puts my_numbers
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   selected_produce = {}
#   counter = 0
  
#   loop do
#     break if counter == produce_keys.size
    
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
    
#     if current_value == 'Fruit'
#       selected_produce[current_key] = current_value
#     end
    
#     counter += 1
#   end
# end
     


# select_fruit(produce) 
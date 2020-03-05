## Original answer
# def sum_of_sums(array)
#   total_sum = 0
#   array.each_with_index do |num, idx|
#     counter = 0
#     until counter > idx
#       total_sum += array[counter]
#       counter += 1
#     end
#   end
#   total_sum
# end

# def sum_of_sums(numbers)
  
#   accumulator = 0
#   sum_total = 0
  
#   numbers.each do |num|
#     accumulator += num
#     sum_total += accumulator
#   end
#   sum_total
# end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).inject(:+)
  end
  sum_total
end
p sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3]) 
puts sum_of_sums([4]) 
puts sum_of_sums([1, 2, 3, 4, 5]) 

## Added the actual string printed out of adding
# def sum_of_sums(array)
#   sum_string = ''
#   total_sum = 0
#   array.each_with_index do |num, idx|
#     sum_string += '('
#     counter = 0
#     until counter > idx
#       total_sum += array[counter]
#       unless counter == idx
#         sum_string += "#{array[counter]} + " 
#       else
#         sum_string += "#{array[counter]})"
#       end
#       counter += 1
#     end
#     sum_string += ' + ' unless idx == array.size - 1
#   end
#   [sum_string, total_sum]
# end
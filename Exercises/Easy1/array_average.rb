
# def average(array)
#   return array.sum / array.size
# end

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  # sum / numbers.count
end
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
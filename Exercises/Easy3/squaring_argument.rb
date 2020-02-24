
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# def num_to_power(num, power)
#   count = 1
#   return 1 if power == 0
#   return num if power == 1
#   product = multiply(num, num)
#   until count == power - 1
#     product *= num
#     count += 1
#   end
#   product
# end

def num_to_power(num, power)
  # count = 1
  return 1 if power == 0
  return num if power == 1
  num_multiply = power / 2
  product = 1
  num_multiply.times do
    product *= multiply(num, num)
  end
  if power % 2 == 1
    product *= num
  end
  product
end

puts "Enter a number: "
num = gets.to_i
puts "Enter a power: "
power = gets.to_i
# puts "square(#{num}) = #{square(num)}"
puts num_to_power(num, power)
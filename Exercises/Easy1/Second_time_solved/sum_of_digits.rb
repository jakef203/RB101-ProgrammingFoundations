
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.


# input - integer
# output - sum of digits of the input integer

# Initialize a variable called sum, set it to 0
# number_string variable equal to input.to_s
# Iterate through each char in number_str and add it to sum after converting it to integer
# Return sum

def sum(number)
  
  sum_digits = 0
  
  number_string = number.to_s
  number_string.each_char { |ch| sum_digits += ch.to_i }
  sum_digits
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
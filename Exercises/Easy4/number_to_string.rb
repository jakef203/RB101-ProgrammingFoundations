
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  result = ''
  loop do
    integer, remainder = integer.divmod(10)
    result.prepend(DIGITS[remainder])
    break if integer == 0
  end
  result
end


puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
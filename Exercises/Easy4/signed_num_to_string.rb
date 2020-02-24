
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

# def signed_integer_to_string(integer)
#   if integer == 0
#     return '0'
#   elsif integer > 0
#     return '+' + integer_to_string(integer)
#   else
#     return '-' + integer_to_string(-integer)
#   end
# end
# Using case statement
def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string(-integer)}"
  when 1  then "+#{integer_to_string(integer)}"
  else         "0"
  end
end
        
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
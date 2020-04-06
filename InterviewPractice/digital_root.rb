

## input - integer to do recursive addition on
## ouput - integer which represents the sum of the last recursive addition, should be less than 10

# Take the number input, save it as a string into num_string_add
#  Set array_ints = num.string.chars(&:to_i)
#  Do a loop
#   Set sum = 0
#   Iterate through each int and add to sum
#   if sum < 10 break from loop
#   Set array_ints = sum.string.chars(&:to_i)
#  Return sum

def digital_root(number)
  arr_sum = 0
  number_int_array = number.to_s.chars.map(&:to_i)
  loop do 
    arr_sum = number_int_array.sum
    break if arr_sum < 10
    number_int_array = arr_sum.to_s.chars.map(&:to_i)
  end
  arr_sum
end 

p digital_root(16)

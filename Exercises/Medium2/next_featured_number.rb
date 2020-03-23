
# def number_unique_digits?(num)
#   num_array = num.to_s.chars
#   num_array == num_array.uniq
# end

# def featured(num)
#   number_chars = num.to_s.chars
#   remainder = num % 7 
#   lower_num = num - remainder
#   if lower_num.odd?
#     test_num = lower_num + 14
#   else
#     test_num = lower_num + 7
#   end
#   loop do
#     return test_num if number_unique_digits?(test_num)
#     test_num += 14
#     break if test_num >= 9_876_543_210
#   end
#   'There is no possible number that fulfills those requirements'
# end

# puts featured(12) == 21
# puts featured(20) == 21
# puts featured(21) == 35
# puts featured(997) == 1029
# puts featured(1029) == 1043
# puts featured(999_999) == 1_023_547
# puts featured(999_999_987) == 1_023_456_987
# puts featured(9_999_999_999)

# Their solution
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999)

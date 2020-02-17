
# def stringy(num, start_with = 1)
#   if start_with == 1
#     two_digit_mult = '10'
#     one_digit = '1'
#   else
#     two_digit_mult = '01'
#     one_digit = '0'
#   end
  
#   str = ''
#   multiple, remainder = num.divmod(2)
#   str += two_digit_mult * multiple
#   str += one_digit if remainder == 1
#   str
# end

def stringy(num, start_with = 1)
  numbers = []

  num.times do |i|
    number = i.even? ? start_with : (start_with-1).abs
    numbers << number
  end

  numbers.join
end
  
puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4)
puts stringy(7)
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

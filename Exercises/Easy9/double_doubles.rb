
def twice(num)
  if is_double?(num)
    num
  else
    num * 2
  end
end

def is_double?(num)
  num = num.to_s
  if num.size.odd?
    false
  else
    mid_index = num.size / 2
    num_left_side = num[0...mid_index]
    num_right_side = num[mid_index..-1]
    return true if num_left_side == num_right_side
    false
  end
end
## Their solution
# def twice(number)
#   string_number = number.to_s
#   center = string_number.size / 2
#   left_side = center.zero? ? '' : string_number[0..center - 1]
#   right_side = string_number[center..-1]

#   return number if left_side == right_side
#   return number * 2
# end
puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10



def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number_arr, n)
  number_arr[-n..-1] = rotate_array(number_arr[-n..-1])
  number_arr
end

def max_rotation(number)
  all_digits = number.to_s.chars
  size = all_digits.size
  size.downto(2) do |n|
    all_digits = rotate_rightmost_digits(all_digits, n)
  end
  all_digits.join.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
# puts max_rotation(8_000_529_146)

# def rotate_string(string)
#   string[1..-1] + string[0]
# end

# def rotate_rightmost_digits(number, right_digits)
#   number_st = number.to_s
#   left_num_digits = number_st.size - right_digits
#   number_left = number_st[0, left_num_digits]
#   number_right = number_st[-(right_digits)..-1]
#   rotated_right = rotate_string(number_right)
#   new_num_st = number_left + rotated_right
#   new_num_st.to_i
# end

## Their solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
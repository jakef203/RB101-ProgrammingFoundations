
# def rotate_array(array)
#   new_array = array.dup
#   new_array.push(new_array.shift)
#   new_array 
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_int(integer)
  rotate_string(integer.to_s).to_i
end

puts rotate_string('12345') == '23451'

puts rotate_int(12345) == 23451

puts rotate_int(204500) == 45002

# puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]   # => true
# puts x == [1, 2, 3, 4] 
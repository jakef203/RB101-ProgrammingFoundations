
#  Set result array to empty.
#  Set start_idx to 0.
#  Set end_idx to 1.
#  Loop from first to second-to-last letter, taking 2-letter strings.  
#    -Start-idx will go from 0 to string.size-2.
#  Set test_string_size = 2.
#  If you find palindrome, add it to result array.
#    Start loop - check the index before current location.  Add 2 to test_string_size.
#                 If index_check > string.size - size break from loop. 
# =>            If index_check <= string.size - test_string size 
#                   Check if palindrome and add if so, if not look at next index before.
#  After reachiing end of loop do same thing with string size of 3

# require 'pry'
 
def is_palindrome?(str)
  str == str.reverse
end


def find_palindromes(str)
  result = []
  
  2.upto(3).each do |substr_size|
    0.upto(str.size-substr_size).each do |start_idx|
      # substr_size = substring_type
      # binding.pry
      substring = str[start_idx, substr_size] #How is this going back to 2, original substr_size?
      new_start_idx = start_idx
      temp_substr_size = substr_size
      loop do
        if is_palindrome?(substring)
          result << substring
          temp_substr_size += 2
          # binding.pry
          new_start_idx -= 1
          break if (new_start_idx > str.size - temp_substr_size) || (new_start_idx < 0)
          substring = str[new_start_idx, temp_substr_size]
        else
          break
        end
      end
    end
  end
  result
end

puts find_palindromes('supercalifragilisticexpialidocious')
puts find_palindromes('aacdeffedcbb')
    
#   0.upto(str.size-3).each do |start_idx|
#     substr_size = 3
#     substring = str[start_idx, substr_size]
#     new_start_idx = start_idx
#     loop do
#       if is_palindrome?(substring)
#         result << substring
#         substr_size += 2
#         new_start_idx -= 1
#         break if new_start_idx > str.size - substr_size
#         substring = str[new_start_idx, substr_size]
#       else
#         break
#       end
#     end
#   end
#   result
# end

 
# def is_palindrome?(str)
#   str == str.reverse
# end

# puts find_palindromes('supercalifragilisticexpialidocious')
# puts find_palindromes('abcdeffedcbb')
# puts find_palindromes('abcdefgfedcbb')
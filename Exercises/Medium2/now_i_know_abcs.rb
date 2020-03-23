
# Their solution

BLOCKS = %w(BO GT VI XK RE LY DQ FS ZM CP JW NA HU)

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

## This is my original, doesn't work for more than one of same letter though
# def block_word?(word)
#   alpha_array = ['B', 'O', 'G', 'T', 'V', 'I', 'X', 'K', 'R', 
#                  'E', 'L', 'Y', 'D', 'Q', 'F', 'S', 'Z', 'M',
#                  'C', 'P', 'J', 'W', 'N', 'A', 'H', 'U']

#   word.each_char do |ch| 
#     ch = ch.upcase
#     if alpha_array.include?(ch)
#       index = alpha_array.index(ch)
#       index -= 1 if index.odd?
#       2.times { |i| alpha_array.delete_at(index) }
#     else
#       return false
#     end
#   end
#   true
# end

# puts block_word?('BATCH') == true
# puts block_word?('BUTCH') == false
# puts block_word?('jest') == true

# s = %w(back word stay cop by)

# p s.none? { |word| word.size > 4 }




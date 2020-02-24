
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

def is_an_ip_number?(word)
  (0..255).include?(word.to_i)
end
# My solution
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   count = 0
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#     count += 1
#   end
#   count == 4
# end
# Their solution
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

puts dot_separated_ip_address?('100.0.237.4.5')
puts dot_separated_ip_address?('255.250.4.300')
puts dot_separated_ip_address?('0.255.100.37')
puts dot_separated_ip_address?('50.49.105')
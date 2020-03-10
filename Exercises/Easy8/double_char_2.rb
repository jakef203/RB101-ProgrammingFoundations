# My solution, using regexp
def double_consonants(string)
  result = ''

  string.each_char do |ch|
    if ch =~ /[a-z&&[^aeiou]]/i
      result << ch * 2
    else
      result << ch
    end
  end
  result
end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("HEllo-WOrld!") == "HHEllllo-WWOrrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

## Their solution
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''

#   string.each_char do |ch|
#     result << ch
#     result << ch if CONSONANTS.include?(ch.downcase)
#   end
#   result
# end

# puts double_consonants('String') == "SSttrrinngg"
# puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# puts double_consonants("July 4th") == "JJullyy 4tthh"
# puts double_consonants('') == ""

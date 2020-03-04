
UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

# def swapcase(string)
#   string_array = string.chars.map do |ch|
#     if UPPERCASE_LETTERS.include?(ch)
#       ch.downcase 
#     elsif LOWERCASE_LETTERS.include?(ch)
#       ch.upcase
#     else
#       ch
#     end
#   end
#   string_array.join
# end

def swapcase(string)
  string_array = string.chars.map do |ch|
    if ch =~ /[A-Z]/
      ch.downcase 
    elsif ch =~ /[a-z]/
      ch.upcase
    else
      ch
    end
  end
  string_array.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'





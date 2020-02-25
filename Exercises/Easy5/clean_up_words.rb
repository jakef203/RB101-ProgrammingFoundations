
#Using regexp
def cleanup(string)
  string.gsub(/[^a-z]+/i, ' ')
end

# # Solution 2 using regex and squeeze ( if you don't use +)
# def cleanup(text)
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

## Longer solution
# ALPHABET = Array('a'..'z')

# def cleanup(string)
#   new_string = ''
#   string.each_char do |c|
#     if ALPHABET.include?(c.downcase)
#       new_string << c
#     else
#       new_string << ' ' unless new_string.last == ' '
#     end
#   end
#   new_string
# end

s = "---what's My +*& line?"
puts cleanup(s)
puts s
  
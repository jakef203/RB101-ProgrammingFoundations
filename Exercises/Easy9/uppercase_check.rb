
# def uppercase?(string)

#   string.each_char do |ch| 
#     return false if ch =~ /[a-z]/
#   end
#   true
# end

def uppercase?(string)
  string == string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
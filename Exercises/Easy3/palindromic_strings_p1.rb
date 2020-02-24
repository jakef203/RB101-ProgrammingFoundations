#Part 1

def palindrome?(string)
  string == string.reverse
end

# # puts palindrome?('madam') == true
# # puts palindrome?('Madam') == false          # (case matters)
# # puts palindrome?("madam i'm adam") == false # (all characters matter)
# # puts palindrome?('356653') == true

# # puts palindrome?([1,2,3,4,3,2,1]) == true
# # puts palindrome?('alfalfaflafla') == true
# # puts palindrome?(['a', 'l','f','l','a'])


# #Part 2

# def real_palindrome?(string)
#   new_str = ''
#   string.each_char do |c| 
#     if ('a'..'z').include?(c.downcase)
#       new_str += c.downcase
#     end
#   end
#   palindrome?(new_str)
# end

# ## Their solution
# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
# end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

## Part 3 - Palindrome Numbers
def palindromic_number?(num)
  palindrome?(num.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true



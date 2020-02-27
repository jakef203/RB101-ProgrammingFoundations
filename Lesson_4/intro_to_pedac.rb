
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Some questions you might have?
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrome words case-sensitively?
# 5. What is the required size of the smallest sub-string?

# input: string
# output: array of strings
# rules:
#       Explicit requirements:  
#           - Substrings are case-sensitive
#           - palindrome words should be case sensitive, meaning "abBA" is not 
#             a palindrome

#       Implicit requirements:

def substrings(str)
  result = []
  0.upto(str.size - 2).each do |start_idx|
    (start_idx + 1).upto (str.size - 1) do |end_idx|
      result << str[start_idx..end_idx]
    end
  end
  result
end

puts substrings('abcdefghjilk')

# def palindrome?(string)
#   string.size >= 2 && string == string.reverse
# end

# def substrings(string)
#   result = []
#   0.upto(string.size - 1) do |start_index|
#     start_index.upto(string.size - 1) do |end_index|
#       result << string[start_index..end_index]
#     end
#   end
#   result
# end 

# def palindromes(string)
#   result = []
#   all_substrings = substrings(string)
#   all_substrings.each do |substring|
#   result << substring if palindrome?(substring)
#   end
#   result
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

## This doesn't use extra function of substring to calculate all substrings 
## just adds substring to result as it's looping through all strings

# def palindrome?(string)
#   string.size >= 2 && string == string.reverse
# end

# def palindromes(string)
#   result = []
#   0.upto(string.size - 1) do |start_index|
#     start_index.upto(string.size - 1) do |end_index|
#       substring = string[start_index..end_index]
#       result << substring if palindrome?(substring)
#     end
#   end
#   result
# end 

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

## Bonus

def palindromes(string)
  result = []
  0.upto(string.size - 1) do |start_index|
    start_index.upto(string.size - 1) do |end_index|
      substring = string[start_index..end_index]
      result << substring if palindrome?(substring, true, false)
    end
  end
  result
end

## Option 1, ignore_non_alpha_numeric, 
#     if false, then 'madam!' will not be a palindrome, if true then 'madam!' will be a palindrome
## Option 2, ignore_case,
#     if false, then 'Madam' will not ba a palindrome, if true then 'Madam' will be a palindrome
def palindrome?(string, ignore_non_alpha_numeric = false, ignore_case = false)
  string = string.downcase if ignore_case == true
  string = string.delete('^[a-zA-Z0-9]') if ignore_non_alpha_numeric == true
  string.size >= 2 && string == string.reverse
end

p palindromes('Abb a')
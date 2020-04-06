
#   Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

## input - string
## output - array of all substrings of string that are palindromes, meaning they are the same forward as backward

## Get all substrings of string, assign to arr_substrings

## Initialize new array called arr_palindromes - []
## Iterate through arr_substrings, check if each substring is a palindrome.  If it is, then add it to arr_palindromes.
## Return arr_palindromes

def is_palindrome?(string)
  string == string.reverse && string.size >= 2
end

def substrings(string)
  
  new_array = []
  0.upto(string.size - 1) do |start_idx|
    start_idx.upto(string.size - 1) do |end_idx|
      new_array << string[start_idx..end_idx]
    end
  end
  new_array
end

def palindromes(string)
  
  arr_substrings = substrings(string)
  arr_substrings.select { |str| is_palindrome?(str) }
end
  
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

## input - string
## ouput - string with words in reverse order

## Split string and assign to array
## return array.reverse

def reverse_sentence(string)
  
  arr = string.split
  arr = arr.reverse
  arr.join(' ')
end
  

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


# Take a string as an argument
# Output the string in reverse order, but don't use reverse method of String class

## Copy the string argument, str, into str_copy
## Initialize a string variable, called str_reversed that is empty
## Make str_copy an array of chars with str_copy.chars
## Take the last item off of str_copy using pop
## Append the popped item onto str_reverse using push
## Stop iterating, or taking off last item, when str_copy is empty

def reverse_string(str)
  return str if str == ''
  str_copy = str.chars
  str_reversed = ''
  loop do 
    popped_item = str_copy.pop
    str_reversed << popped_item
    break if str_copy.empty?
  end
  str_reversed
end

p reverse_string('')
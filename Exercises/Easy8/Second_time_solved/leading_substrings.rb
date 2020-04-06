
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.
  
## input - a string
## output - list of substrings of original string that start at first element

## Create a new_array = []
## string size, use times, iterate through and take substrings from 0 up to current index
## Append each substring to new_array
## Return new_array

def substrings_at_start(string)
  
  new_array = []
  string.size.times do |idx|
    new_array << string[0..idx]
  end
  new_array
end

def substrings_at_start(string)
  
  new_array = []
  1.upto(string.size) do |idx|
    new_array << string.slice(0, idx)
  end
  new_array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
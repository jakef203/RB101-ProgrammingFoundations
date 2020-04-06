
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

## input - string
## ouput - array that contains all substrings of input string

## Create an empty new array
## Iterate over two structures to get subarrays

def substrings_at_start(string)
  
  new_array = []
  1.upto(string.size) do |idx|
    new_array << string.slice(0, idx)
  end
  new_array
end

def substrings(string)
  
  new_array = []
   
  0.upto(string.size - 1) do |start_idx|
    new_array += substrings_at_start(string[start_idx..-1])
  end
  new_array
end
    
# def substrings(string)
  
#   new_array = []
  
#   0.upto(string.size - 1) do |start_idx|
#     start_idx.upto(string.size - 1) do |end_idx|
#       new_array << string[start_idx..end_idx]
#     end
#   end
  
#   new_array
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
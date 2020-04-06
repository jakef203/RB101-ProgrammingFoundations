
# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
# input - integer
# output - string of alternating 1s and 0s, counting up to integer size

## Initialize a new empty string
## Iterate using upto, if iterator number is odd, append a 1, else append a 0.
## Return string

def stringy(number)
  
  new_string = ''
  
  1.upto(number) do |i|
    if i.odd?
      new_string << '1'
    else
      new_string << '0'
    end
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

## input - string of characters
## output - same string, with cases swapped, other characters remain same

## Initialize new_str, empty
## Iterate through input string, 
##.  If it's uppercase make lower, etc.
##.  Append to new_str


def swapcase(string)
  
  # new_str = ''
  
  result = string.chars.map do |ch|
    
    if ch =~ /[A-Z]/
      ch.downcase
    elsif ch =~ /[a-z]/
      ch.upcase
    else
      ch
    end
  end
  result.join
end




p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

## input - string
## output - string that doubles every character of input string

## Initialize new empty string
## Iterate through input string, for each character append 2 # character onto new string
## Return new_string

def repeater(string)
  
  new_str = ''
  
  string.each_char { |ch| new_str << ch * 2 }
  
  new_str
end


# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''
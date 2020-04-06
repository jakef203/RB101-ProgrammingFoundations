
## input a string
## output a string which elimates consecutive repeat characters

## Iterate through string, on each char, compare it to last, add to a new string 
##   If the character changes on an index, add character from index before
## Add last character

def crunch(string)

  # return '' if string.size == 0
  
  # arr_chars = string.chars
  size = string.size 
  new_str = ''

  0.upto(size) do |idx|
    if string[idx] != string[idx + 1]
      new_str << string[idx]
    end
  end
  # new_str << arr_chars[size - 1]
  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

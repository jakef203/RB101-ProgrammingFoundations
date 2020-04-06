
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
  
## Find size of string
## For odd length/size, size / 2 , except length 1, just return the value
## For even length/size, take one before size / 2 and size / 2, works for length 2

def center_of(string)
  
  middle_index = string.size / 2
  
  # return string if string.size == 1
  
  if string.size.odd?
    return string[middle_index]
  else
    return string[(middle_index - 1).. middle_index]
  end
end
  
    

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'


# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
  

## input string of characters
## output - string alternating upper and lower, non-alpha characters count as alternating

##. Iterate through, uppercase then append each even index, append downcase for odd 

def staggered_case(string)
  
  new_str = ''
  
  string.chars.each_with_index do |ch, idx|
    if idx.even?
      new_str << ch.upcase
    elsif idx.odd?
      new_str << ch.downcase
    end
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
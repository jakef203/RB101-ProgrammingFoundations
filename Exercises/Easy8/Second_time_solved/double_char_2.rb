
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.


def double_consonants(string)
  
  new_str = ''
  
  string.each_char do |ch| 
    if ch =~ /[b-z&&[^aeiou]]/i
      new_str << ch * 2 
    else
      new_str << ch
    end
  end
  new_str
end




p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
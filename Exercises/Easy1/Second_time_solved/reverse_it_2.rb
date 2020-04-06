
# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.
  
# input - string
# output - string with words reversed if there are 5 or more characters

# Set string.split equal to array_words
# Use map to create new array, if there are 5 or more letters(str.size) >= 5, map
#.  reverse of the str, otherwise I map the original string
# Join with " " and return the array after joining

def reverse_words(string)
  
  array_words = string.split
  
  array_reverse = 
    array_words.map do |str|
      if str.size >= 5
        str.reverse
      else
        str
      end
    end
  array_reverse.join(' ')
end
    



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')
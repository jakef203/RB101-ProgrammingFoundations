
## input - String of words
## output - String of words with first and last letter of each word swapped

## Initialize a new array to [] that will contain swapped words
## Iterate through original array, swap first and last letters, append this to new_array
## Join new_array with ' ' and return

def swap(string)

  arr_words = string.split

  arr_words.map! do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  arr_words.join(' ')

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
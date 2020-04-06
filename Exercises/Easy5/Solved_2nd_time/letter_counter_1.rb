
## input - a string of words
## output - a hash with word lengths as keys, and counts of different lengths for values

## Split the input string into an array of words
## Initialize a hash with starting value of 0

## Iterate through each word
##   Take the length of the word, and use that as key to increment the hash count of that length
## Return hash

def word_sizes(string)

  arr_words = string.split 
  hash_counts = Hash.new(0)

  arr_words.each do |word|
    size = word.size
    hash_counts[size] += 1
  end

  hash_counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
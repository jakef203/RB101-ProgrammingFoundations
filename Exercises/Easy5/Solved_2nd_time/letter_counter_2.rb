

def word_sizes(string)

  arr_words = string.split(/[^a-z]/i) 
  hash_counts = Hash.new(0)

  arr_words.each do |word|
    size = word.size
    hash_counts[size] += 1
  end

  hash_counts
end

word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!')# == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?")# == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
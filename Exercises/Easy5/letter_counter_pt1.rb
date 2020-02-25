
# def word_sizes(words)
#   counts = Hash.new(0)
#   words.split.each do |word|
#     counts[word.length] += 1
#   end
#   counts
# end

# puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# puts word_sizes('') == {}

# Letter Counter Part 2

def word_sizes(words)
  counts = Hash.new(0)
  words.split.each do |word|
    word = word.gsub(/[^a-z]/i, '')
    counts[word.length] += 1
  end
  counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

words = "the flintstones rock"

# cap_words = words.split.map! do |word|
#   word.capitalize
# end

# puts cap_words.join(' ')

puts words.split.map { |word| word.capitalize }.join(' ')

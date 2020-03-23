
## Their solution with inputting text file, where there are \n characters
text = File.readlines 'long_sent.txt'
full_text = text.join
p full_text
full_text.gsub!("\n", ' ')
full_text = full_text[1..]
sentences = full_text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"


# full_text = text.join
# # p full_text
# full_text.gsub!("\n", ' ')
# full_text = full_text[1..]

# p full_text
# def longest_sentence(text)

#   index_longest_sentence = nil
#   sentence_max_words = 0  
# sentences = text.split(/[\.\?!]\s*/) # option 1
# sentences = text.split(/[\.\?!]/) # option 2
#   # p sentences
#   sentences.each_with_index do |sentence, idx|
  # array = sentence.split(/[^a-z'-]+/i) # option 1
  # array = sentence.split # option 2
#     p array
#     if array.count > sentence_max_words
#       sentence_max_words = array.count
#       index_longest_sentence = idx
#     end
#   end
#   puts "#{sentences[index_longest_sentence]}."
#   puts "The number of words in the longest sentence is #{sentence_max_words}."
# end

# longest_sentence(full_text)

## Finding the longest word in text

text = File.readlines 'long_sent.txt'
full_text = text.join
# p full_text
full_text.gsub!("\n", ' ')
full_text = full_text[1..]
sentences = full_text.split(/\.|\?|!/)
p sentences
largest_words = 
  sentences.map do |sentence|
    sentence.split.max_by { |word| word.size }
  end
largest_word = largest_words.max_by { |word| word.size }
p largest_word



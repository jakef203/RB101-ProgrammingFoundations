
# def word_cap(words)  ## Note here you can only use map! for it to work correctly
#   words = words.split
#   words.map! { |word| word.capitalize }
#   words.join(' ')
# end

# def word_cap(words)
#   word_array = words.split.map do |word|
#     word.capitalize
#   end
#   word_array.join(' ')
# end

def word_cap(words)  ## Note with this you can use map or map! and it works correctly
  words.split.map(&:capitalize).join(' ')
end

## Bonus: Solving it without using capitalize
# def word_cap(words)
#   words = words.split
#   word_array = words.map do |word|
#     first_letter = word[0].upcase
#     last_letters = word[1..].downcase
#     first_letter + last_letters
#   end
#   word_array.join(' ')
# end
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

## Testing to see how map! works in function
# def word_cap(words)
#   words.map!(&:capitalize).join(' ')
# end

# a = ['four', 'score', 'and', 'seven'] 
# puts a.object_id
# puts word_cap(a) == 'Four Score And Seven'
# p a
# puts a.object_id
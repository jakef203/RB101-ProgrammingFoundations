
# def word_to_digit(sentence)
#   sentence = sentence.split(/[^a-z]/i)
#   new_array = sentence.map do |word|
#     case word
#     when 'zero'  then 0
#     when 'one'   then 1
#     when 'two'   then 2
#     when 'three' then 3
#     when 'four'  then 4
#     when 'five'  then 5
#     when 'six'   then 6
#     when 'seven' then 7
#     when 'eight' then 8
#     when 'nine'  then 9
#     else         word
#     end
#   end

#   new_array.join(' ')
# end

# puts word_to_digit('Please call me at five five five one two three four. Thanks.') 


## Their solution
DIGIT_HASH = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
               'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# puts word_to_digit('Please call me at five five five one two three four. Thanks.') 

## Replacing uppercase or capitalized words
def word_to_digit(words)
  # words
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
  end
  words
end

puts word_to_digit('Please call me at Five five five ONE twO Three FOUR. Thanks.')

## Spaces between consecutive numbers are removed.  Remove spaces after numbers
## you create.  Leave spaces after numbers (digits) that are already there.
def word_to_digit(words)
  # words
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/#{word}\b ?/, DIGIT_HASH[word])
  end
  words
end

puts word_to_digit('Please call me 23 at five five five one two three four. Thanks.') 


# def swap(string)
#   new_words = []
#   words = string.split
#   words.each do |word|
#     if word.length == 1
#       new_words << word
#     else
#       temp = word[0]
#       word[0] = word[-1]
#       word[-1] = temp
#       new_words << word
#     end
#   end
#   new_words.join(' ')
# end

#Their solution

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

# Further exploration, this works, but looks more confusing
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(words)
#   result = words.split.map do |word|
#     word[0], word[-1] = swap_first_last_characters(word[0], word[-1])
#     word
#   end
#   result.join(' ')
# end


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
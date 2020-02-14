
def reverse_words(str)
  array = str.split
  new_array = []
  array.each do |word|
    if word.length >= 5
      reversed_word = word.chars.reverse.join
      new_array.push(reversed_word)
    else
      new_array.push(word)
    end
  end
  new_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
#Their solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

 

statement = "The Flintstones Rock"
# ## This is most simple to me
# let_hash = Hash.new(0)

# statement.each_char do |char|
#   if ('a'..'z').include?(char.downcase)
#     let_hash[char.downcase] += 1
#   end
# end

# puts letters_hash

# ## Alternate way using each_with_object
#  a = statement.chars.each_with_object(Hash.new(0)) do |char, hash|
#   hash[char] += 1 if ('a'..'z').include?(char.downcase)
# end

# puts a

## Their solution
result = {}
letters = ('a'..'z').to_a + ('A'..'Z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
puts result


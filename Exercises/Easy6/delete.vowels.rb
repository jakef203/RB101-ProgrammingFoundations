
## Their solution, better
def remove_vowels(words)
  words.map { |word| word.delete('aeiouAEIOU') }
end
## My original solution
# def remove_vowels(words)
#   words.each do |word| 
#     %w(A a E e I i O o U u).each do |letter|
#       word.delete!(letter)
#     end
#   end
#   words
# end
## Their solution, better

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))     
    
# puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


## input - string
## output - string with vowels deleted

## Create a string that has a vowels, upper and lowercase

## Delete the vowels from the input string using delete

VOWELS = 'aeiouAEIOU'

def remove_vowels(array)
  
  new_array = array.map { |string| string.delete(VOWELS) }

end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']




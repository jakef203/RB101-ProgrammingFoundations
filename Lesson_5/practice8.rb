
hsh = {first: ['thE', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each_value do |array|
#   array.each do |word|
#     word.each_char do |ch|
#       puts ch if %w(a e i o u).include?(ch.downcase)
#     end
#   end
# end

## input - a hash
## ouput  - array containing all of the vowels of the strings

## Create an empty array called arr_vowels
## Iterate through each key/value pair of the hash
##   Iterate over each value (array of strings)
##     For each string, iterate through the string
##     If a letter is a vowel [a, e , i, o, u], add it to arr_vowels
## Return the arr_vowels

def vowels(hsh)
  arr_vowels = []
  hsh.each do |number, arr|
    arr.each do |string|
      string.each_char do |ch|
        if ['a', 'e', 'i', 'o', 'u'].include?(ch.downcase)
          arr_vowels << ch
        end
      end
    end
  end
  arr_vowels
end

p vowels(hsh)



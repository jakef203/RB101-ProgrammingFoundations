

## input - string of words
## output - same string of words, but each word is now capitalized

## Split string into array of separate words, call it arr_words
## arr_words, map! to take each word, capitalize it and map into arr_words
## return arr_words joined into string with join(" ")

def capitalize_words(string)

  arr_words = string.split 

  arr_words.map! { |word| word.capitalize }

  arr_words.join(" ")

end

p capitalize_words("four score and seven") == "Four Score And Seven"
p capitalize_words("the javascript language") == "The Javascript Language"
p capitalize_words('this is a "quoted" word') == 'This Is A "quoted" Word'
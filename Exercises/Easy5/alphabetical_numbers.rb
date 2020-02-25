
ALPHABET = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
            'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
            'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty',
            'twentyone', 'twentytwo', 'twentythree', 'twentyfour', 'twentyfive',
            'twentysix', 'twentyseven', 'twentyeight', 'twentynine', 'thirty']

def alphabetic_number_sort(digit_array)
  word_array = digit_array.map { |digit| ALPHABET[digit] }
  sorted = word_array.sort
  digit_sorted = sorted.map { |word| ALPHABET.index(word) }
  digit_sorted
end
  

    
puts alphabetic_number_sort((0..20).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 20, 2, 0
]
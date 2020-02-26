

ALPHABET = %w(zero one two three four five six seven eight nine ten eleven twelve
              thirteen fourteen fifteen sixteen seventeen eighteen nineteen
              twenty twenty-one twenty-two twenty-three)
## Original answer, very wordy and tedious
# def alphabetic_number_sort(digit_array)
#   word_array = digit_array.map { |digit| ALPHABET[digit] }
#   sorted = word_array.sort
#   digit_sorted = sorted.map { |word| ALPHABET.index(word) }
#   digit_sorted
# end

## Their first solution  
def alphabetic_number_sort(digit_array)
  digit_array.sort_by { |digit| ALPHABET[digit] }
end

a = (0..19).to_a
puts alphabetic_number_sort(a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p a

# ## This is short one that works well, just pass the range
# def alphabetic_number_sort(range)
#   ALPHABET[range].sort
# end
# p alphabetic_number_sort(0..23)


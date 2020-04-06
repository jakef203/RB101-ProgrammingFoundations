
## input - array of integers between 0 and 19 inclusive
## output - array of integers sorted by the string name of each integer("eight" for 8)

## Make a hash with integers as keys and English spelling as values

## Sort the input array by the hash values for each integer

DIGITS_TO_NAME = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
                   8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
                   14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(arr)

  sorted_arr = arr.sort_by { |num| DIGITS_TO_NAME[num] }

end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

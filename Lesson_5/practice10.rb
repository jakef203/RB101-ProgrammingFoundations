
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

## input: an array of hashes
## output: new array where each number in original hash is incremented by one

## Initialize a new array called arr_incremented
## Iterate through each hash in the array using map, call block variable hsh
##   For each hsh, use map, iterate through each key/value pair, call block variables letter/number
##      return number + 1 to map
## Return arr_incremented

def increment_array(arr)
  
  arr_incremented = 
     arr.map do |hsh|
      new_hsh = {}
      hsh.each do |letter, number|
        new_hsh[letter] = number + 1
      end
      new_hsh 
      # new_arr = []
      # hsh.each do |letter, number|
      #   new_arr << [letter, number + 1]
      # end
      # new_arr.to_h
    end
  arr_incremented
end

p increment_array(arr)

# a = arr.map do |hash|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

# b = arr.each_with_object([]) do |hash, arr|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   arr << incremented_hash
# end

# p arr
# p a
# p b



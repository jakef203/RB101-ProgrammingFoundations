
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

## input - array of subarrays
## output - hash where each subarray, is key/value pair

## Initialize new hash called new_hash
## Iterate over subarrays of main array using each block, use subarray for block variable
##   new_hash[subarray[0]] = subarray[1]
## Return new_hash

def make_new_hash(arr)
  new_hash = {}
  arr.each do |pair|
    new_hash[pair[0]] = pair[1]
  end
  new_hash
end

p make_new_hash(arr)




# new_hash = arr.each_with_object({}) do |item, hsh|
#   hsh[item[0]] = item[1]
# end

# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end

# p arr
# p new_hash
# p hsh

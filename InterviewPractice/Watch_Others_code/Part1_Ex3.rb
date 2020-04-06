
## input - two arrays of equal size
## output - one array with items that alternate between arrays

## Take the size of arr1
## Iterate size times through
##   Append arr1[i], append arr2[i]

def interleave(arr1, arr2)
  
  arr_interleave = []
  size = arr1.size
  
  size.times do |idx|
    arr_interleave << arr1[idx]
    arr_interleave << arr2[idx]
  end
  arr_interleave
end

p interleave([1, 2, 3, 4], ['a', 'b', 'c', 'd'])

def zipper(arr1, arr2)

  new = []
  size = arr1.size

  size.times do |i|
    new << [arr1[i], arr2[i]]
  end
  new
end

p zipper([1, 2, 3, 4], ['a', 'b', 'c', 'd'])



## input - array, arr
## output - array, arr_reverse

## Initiliaze a copy of arr, arr_copy
## Initialize a new array that is reversed, arr_reverse
## Take an item off the back of arr_copy using pop
## Place this item on the back of arr_reverse using push
## Do this until arr_copy is empty

def reverse_array(arr)
    
  return [] if arr.empty?
  arr_copy = arr
  arr_reverse = []

  loop do 
    popped_item = arr_copy.pop
    arr_reverse.push(popped_item)
    break if arr_copy.size == 0
  end
  arr_reverse
end

p reverse_array([1,2,3,5,6])
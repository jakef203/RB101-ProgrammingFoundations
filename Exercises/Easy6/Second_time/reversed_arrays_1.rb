
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.


## input - array of integers
## output - array reversed, same object as input array

## Pop each item off of list, append to temp_list
## Iterate through temp_list, append back onto list_reverse

def reverse!(list)
  
  temp_list = []
  list.size.times do |i|
    temp_list << list.pop
  end
  
  temp_list.each do |item|
    list << item
  end
  list
end

# reverse!([1, 2, 3, 4])




p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []
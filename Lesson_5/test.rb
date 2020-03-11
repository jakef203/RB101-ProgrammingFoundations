
# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.map! do |char|
#   char.upcase!
# end

# p arr1 # => ["a", "b", "c"]
# p arr2 # => ["A", "B", "C"]


# v = [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end

# p v

# j = [[[1, 2], [3, 4]], [5, 6]].map do |arr| 
#   arr.map do |el|
#     if el.to_s.size == 1
#       el + 1
#     else
#       el.map do |n|
#         n + 1
#       end
#     end
#   end
# end

# p j

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh
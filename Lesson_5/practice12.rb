
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = arr.each_with_object({}) do |item, hsh|
  hsh[item[0]] = item[1]
end

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p arr
p new_hash
p hsh

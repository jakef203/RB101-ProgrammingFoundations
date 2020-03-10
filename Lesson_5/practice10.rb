
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

a = arr.map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

b = arr.each_with_object([]) do |hash, arr|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

p arr
p a
p b



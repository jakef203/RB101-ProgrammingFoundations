
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flint_hash = flintstones.each_with_object({}) do |value, hash|
#   hash[value] = flintstones.index(value)
# end

# p flint_hash

hash = {}
flint_hash = flintstones.each_with_index do |val, idx|
  hash[val] = idx
end

p hash



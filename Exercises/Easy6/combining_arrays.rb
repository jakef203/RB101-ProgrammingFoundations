
def merge(arr1, arr2)
  (arr1 + arr2).uniq.sort
end

def merge(arr1, arr2)
  arr1 | arr2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
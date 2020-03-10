
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |num_arr|
  num_arr.select do |num|
    num % 3 == 0
  end
end

p arr
p a

## input - integer, number of digits(length) of the fibnumber at a an index
## ouput - first index where fibnum is input length long

## Iterate until input equals new fibnum length

## Calculate new fibnum, recalculate first and second numbers
## Return index when you find the right fibnum with length


def find_fibonacci_index_by_length(num_digits)

  first_number = 1
  second_number = 1
  index = 3
  loop do
    new_fibnum = first_number + second_number 
    length_fibnum = new_fibnum.to_s.size
    return index if length_fibnum == num_digits
    first_number = second_number 
    second_number = new_fibnum
    index += 1
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
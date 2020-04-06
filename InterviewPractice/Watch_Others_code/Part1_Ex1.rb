
## input - an integer, to decide if this is prime
## output - true or false

def is_prime?(num)
  
  # primes = []
  return false if num == 1
  
  2.upto(num - 1) do |i|
    return false if num % i == 0
  end
  true
end

# 1.upto(20) { |test| puts is_prime?(test) }

# p is_prime?(4)

## input - array of integers
## output - array of integers that are prime

def arr_prime(arr)

  arr.select { |i| is_prime?(i) }

end

# p arr_prime([1, 2, 3, 4])
# p arr_prime([4, 6, 8, 10])

def num_primes(array)

  array.count { |num| is_prime?(num) }
end

p num_primes([1, 2, 3, 4])
p num_primes([4, 6, 8, 10])


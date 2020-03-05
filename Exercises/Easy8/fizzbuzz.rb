
def fizzbuzz(start_num, end_num)
  start_num.upto(end_num) do |num|
    value = case 
      when num % 15 == 0 then "FizzBuzz"
      when num % 5 == 0  then "Buzz"
      when num % 3 == 0  then "Fizz"
      else                     num
    end
    puts value
  end 
end

fizzbuzz(3, 50)

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end
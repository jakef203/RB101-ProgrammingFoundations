
## My original, without converting to string, a little more difficult
def reversed_number(inp_num)
  new_num = 0
  
  until inp_num == 0
    inp_num, remainder = inp_num.divmod(10)
    new_num = (new_num * 10) + remainder
  end
  new_num
end
## Their solution, by converting to string
def reversed_number(inp_num)
  inp_num.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1



## input - integer
## output - input integer reversed
## Convert input to string
## Reverse the string
## Convert to integer
## Return value

def reversed_number(number)
 
  reversed_num = number.to_s.reverse
  reversed_num.to_i
end



p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
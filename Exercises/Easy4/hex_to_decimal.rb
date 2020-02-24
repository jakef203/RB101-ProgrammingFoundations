
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A'=> 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(string)
    multiplier = string.size - 1
    index = 0
    new_int = 0
    until multiplier == -1 do
        new_int += DIGITS[string[index].upcase] * 16**multiplier
        multiplier -= 1
        index += 1
    end
    new_int
end

puts hexadecimal_to_integer('4D9f') == 19871
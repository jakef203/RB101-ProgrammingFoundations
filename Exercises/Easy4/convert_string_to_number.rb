
def string_to_integer(string)
    multiplier = string.size - 1
    index = 0
    int = 0
    until multiplier == -1 do
        int += number_converter(string[index]) * 10**multiplier
        multiplier -= 1
        index += 1
    end
    int
end
    
def number_converter(char)
  case char
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end
# Their solution
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
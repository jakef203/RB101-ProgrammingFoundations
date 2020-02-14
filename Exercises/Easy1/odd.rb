
def is_odd?(num)
  num = num.abs
  case 
  when num >= 2 then is_odd?(num-2)
  when num == 1 then true
  when num == 0 then false
  end
end

def is_odd2?(num)
  (num.remainder(2)).abs == 1
end

puts is_odd2?(2)    # => false
puts is_odd2?(5)    # => true
puts is_odd2?(-17)  # => true
puts is_odd2?(-18)   # => false
puts is_odd2?(0)    # => false
puts is_odd2?(7)
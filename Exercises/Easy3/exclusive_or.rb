
def xor?(arg1, arg2)
  if arg1 == true && arg2 == false || arg1 == false && arg2 == true
    true
  else
    false
  end
end
## Their solution
# def xor2?(arg1, arg2)
#   return true if arg1 && !arg2
#   return true if !arg1 && arg2
#   false
# end

## Best way

def xor2?(arg1, arg2)
  (arg1 && !arg2) || (!arg1 && arg2)
end

puts xor2?(5.even?, 4.even?) == true
puts xor2?(5.odd?, 4.odd?) == true
puts xor2?(5.odd?, 4.even?) == false
puts xor2?(5.even?, 4.odd?) == false
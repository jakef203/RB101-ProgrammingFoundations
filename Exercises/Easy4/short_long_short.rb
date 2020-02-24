
# def short_long_short(st1, st2)
#   if st1.length < st2.length
#     st1 + st2 + st1
#   else
#     st2 + st1 + st2
#   end
# end

def short_long_short(st1, st2)
  st1.length < st2.length ? st1 + st2 + st1 : st2 + st1 + st2
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short(' ', 'xyz') == " xyz "
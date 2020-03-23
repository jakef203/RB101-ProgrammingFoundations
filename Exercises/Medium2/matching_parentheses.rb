
def balanced?(string, bal_char) # Enter bal_char as an array of opening and closing chars - ex. ['(', ')']

  par_count = 0
  
  if bal_char[0] != bal_char[1]
    string.each_char do |ch|
      par_count += 1 if ch == bal_char[0]
      par_count -= 1 if ch == bal_char[1]
      break if par_count < 0 
    end
    par_count == 0 ? true : false
  else
    string.count(bal_char[0]).even?
  end
end

puts balanced?(%("What's goi'ng on here?"), [%("), %(")]) == true


# puts balanced?('What (is) this?', ['(', ')']) == true
# puts balanced?('What is) this?') == false
# puts balanced?('What (is this?') == false
# puts balanced?('((What) (is this))?') == true
# puts balanced?('((What)) (is this))?') == false
# puts balanced?('Hey!') == true
# puts balanced?(')Hey!(') == false
# puts balanced?('What ((is))) up(') == false

# puts balanced?('What [is] this?', ['[', ']']) == true
# puts balanced?('What is] this?', ['[', ']']) == false
# puts balanced?('What [is this?', ['[', ']']) == false
# puts balanced?('[[What] [is this]]?', ['[', ']']) == true
# puts balanced?('[[What]] [is this]]?', ['[', ']']) == false
# puts balanced?('Hey!', ['[', ']']) == true
# puts balanced?(']Hey![', ['[', ']']) == false
# puts balanced?('What [[is]]] up[', ['[', ']']) == false
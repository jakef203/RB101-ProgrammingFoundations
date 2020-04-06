
def is_palindrome?(st, case_sensitive = true)
  st = st.downcase if case_sensitive == false
  st == st.reverse
end

def change_me(sentence)
  return "" if sentence == ""
  words = sentence.split
  new_words = []
  words.each do |word|
    if is_palindrome?(word)
      new_words << word.upcase 
    else
      new_words << word
    end
  end
  new_words.join(' ')
end

puts change_me("We will meet at noon")
puts change_me("I LOVE my Mom and dad equally")


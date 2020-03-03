
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |ch|
    if LOWERCASE_CHARS.include?(ch)
      counts[:lowercase] += 1 
    elsif UPPERCASE_CHARS.include?(ch)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

## Regexp Solution
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |ch| ch =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |ch| ch =~ /[A-Z]/ }
  counts[:neither] = characters.count { |ch| ch =~ /[^A-Za-z]/ }
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
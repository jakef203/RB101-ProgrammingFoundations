
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |array|
  array.each do |word|
    word.each_char do |ch|
      puts ch if %w(a e i o u).include?(ch.downcase)
    end
  end
end

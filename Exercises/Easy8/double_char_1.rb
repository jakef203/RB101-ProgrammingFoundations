
def repeater(string)
  result = ''

  string.each_char do |ch|
    result << ch * 2
  end
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
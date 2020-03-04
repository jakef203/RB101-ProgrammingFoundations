
def penultimate(string)
  string.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

def mid_sentence(string)
  array = string.split
  return nil if array.size == 0
  mid_word = array.size / 2
  array[mid_word]
end

puts mid_sentence("Tod1ay")
puts mid_sentence("")
puts mid_sentence("Why don't we hum along?")
puts mid_sentence("Only two")
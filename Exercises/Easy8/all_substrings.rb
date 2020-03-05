
## My original answer, good answer
def substrings(string)
  result = []
  0.upto(string.size - 1) do |start_index|
    start_index.upto(string.size - 1) do |end_index|
      result << string[start_index..end_index]
    end
  end
  result
end 

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


## Their solution
# def substrings_at_start(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

# def substrings(string)
#   result = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     result.concat(substrings_at_start(this_substring))
#   end
#   result
# end
## Or this for substrings function
# def substrings(string)
#   result = []
#   0.upto(string.size - 1) do |start_index|
#     result += substrings_at_start(string[start_index..-1])
#   end
#   result
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
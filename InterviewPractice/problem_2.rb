
# input: # Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.



def substring_test(str1, str2)
  sorted_arr = [str1, str2].sort_by { |st| st.length }
  sorted_arr.map! { |st| st.downcase }
  short_str, long_str = sorted_arr
  size = short_str.size
  substrings = []
  0.upto(size - 2) do |start_idx|
    (start_idx + 1).upto(size - 1) do |end_idx|
      substrings << short_str[start_idx..end_idx]
    end
  end
  substrings.any? { |substr| long_str.include?(substr) }
end

p substring_test('Something', 'Fun') ==  false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

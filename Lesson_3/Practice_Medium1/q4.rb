
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array1 = [1,2,3,4,5]
array2 = [5,6,7,8,9]

new1 = rolling_buffer1(array1, 10, 6)
p "Array1 is #{array1}"
p "New1 is #{new1}"

new2 = rolling_buffer2(array2, 10, 10)

p "Array2 is #{array2}"
p "New2 is #{new2}"
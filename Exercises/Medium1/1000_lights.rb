
# def lights(n)
#   light_array = [false] * n
  
#   interval = 1
#   n.times do |start_position|
#     toggle_at_interval(interval, start_position, light_array)
#     interval += 1
#   end
#   light_array_on(light_array)
# end   

# def toggle_at_interval(interval, current_position, light_array)
#   until current_position > light_array.size - 1
#       light_array[current_position] = !light_array[current_position]
#       current_position += interval
#   end
# end

# def light_array_on(array)
#     mapped_array = array.each_with_index.map do |val, idx|
#       val == true ? idx + 1 : val
#     end
#   mapped_array.select { |item| item }
# end
  

# p lights(1000)


def lights(n)
  light_array = [false] * n
  light_array_on = []
  interval = 1
  n.times do |start_position|
    round = start_position + 1
    
    toggle_at_interval(interval, start_position, light_array)
    light_array_on = get_light_array_on(light_array)
    light_array_off = (1..n).to_a.difference(light_array_on)
    
    display_round(round, light_array_on, light_array_off)
    interval += 1
  end
  
  light_array_on
end   

def toggle_at_interval(interval, current_position, light_array)
    until current_position > light_array.size - 1
        light_array[current_position] = !light_array[current_position]
        current_position += interval
    end
end

def display_round(round, light_array_on, light_array_off)
  
    if light_array_off.empty?
      puts "round #{round}: every light is turned on"
    elsif light_array_on.empty?
      puts "round #{round}: every light is turned off"
    else
      puts "round #{round}: #{get_lights_string(light_array_on, light_array_off)}" 
    end
end  
  
def get_lights_string(array_on, array_off)
  array_off_inner_str = 
    case array_off.size
    when 1
      " #{array_off[0]} is"
    when 2
      "s #{array_off[0]} and #{array_off[1]} are"
    else
      "s #{array_off[0..-2].join(', ')}, and #{array_off[-1]} are"
    end

  array_on_inner_str = 
    case array_on.size
    when 1
      "#{array_on[0]} is"
    when 2
      "#{array_on[0]} and #{array_on[1]} are"
    else
      "#{array_on[0..-2].join(', ')}, and #{array_on[-1]} are"
    end     
      
  "light#{array_off_inner_str} now off; #{array_on_inner_str} on"
end
    
def get_light_array_on(array)
    mapped_array = array.each_with_index.map do |val, idx|
      val == true ? idx + 1 : val
    end
  mapped_array.select { |item| item }
end

p lights(16)

# display_round(1, [1, 2, 3, 4, 5, 6], [3, 4, 5, 6, 7])
# display_round(1, [1,2,3,4,5], [])
# p lights(1000)
    
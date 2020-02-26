
# def print_in_box(string)
#   length = string.length
#   print_horizontal_border(length)
#   print_inside_blank_line(length)
#   puts "| #{string} |"
#   print_inside_blank_line(length)
#   print_horizontal_border(length)
# end  
  
# def print_horizontal_border(length)
#   puts "+#{'-' * (length + 2)}+"
# end

# def print_inside_blank_line(length)
#   puts "|#{' ' * (length + 2)}|"
# end

## Their solution, much easier to read
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end
# require 'pry'

def print_in_box(message, column_width)
  # if message.length > 76  #truncated message if
  #   message = message[0..75]
  # end
  horizontal_rule = "+#{'-' * (column_width-2)}+"
  blank_line = "|#{' ' * (column_width-2)}|"
  message_lines = []
  message_remaining = message
  message_width = column_width - 4
  loop do
    if message_remaining.length <= (message_width)
      message_lines << message_remaining
      # binding.pry
      break
    elsif message_remaining[message_width-1] == ' ' 
      message_lines << message_remaining[0..(message_width-1)]
      message_remaining = message_remaining[message_width..-1]
      # binding.pry
    elsif message_remaining[message_width] == ' ' 
      message_lines << message_remaining[0..message_width-1]
      message_remaining = message_remaining[message_width+1..-1]
    else
      i = message_width - 2
      loop do
        break if message_remaining[i] == ' '
        i -= 1
      end
      message_lines << message_remaining[0..i]
      message_remaining = message_remaining[i+1..-1]
      # binding.pry
    end
  end

  puts horizontal_rule
  puts blank_line
  message_lines.each { |line| puts "| #{line.ljust(message_width, ' ')} |" }
  puts blank_line
  puts horizontal_rule
end
  


# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
print_in_box("0123456789 0123456789 0123456789 0123456789 0123456789 0123456 0123456789" +
              " Hot dog sandwiches are the best thing ever man, I mean yeah I don't know a lot" + 
              "of stuff but in the end you can't really be too sure about what's going on around town" + 
              "and why we do what we do, it's just pure chaos.  I don't know man.", 80)

# puts "  01234567890123456789  "
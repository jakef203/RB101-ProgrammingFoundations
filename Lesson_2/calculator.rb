require 'yaml'
require 'pry'
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
  "=> #{message}"
end

def valid_number?(num)
  num.to_i().to_s() == num || num.to_f().to_s() == num
end

def operation_to_message(op)
  case op
  when '1' then return 'Adding'
  when '2' then return 'Subtracting'
  when '3' then return 'Multiplying'
  when '4' then return 'Dividing'
  end
end

prompt('welcome')
name = ''
loop do
  name = Kernel.gets().chomp
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

loop do
  number1 = nil
  loop do
    prompt('first_number')
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = nil
  loop do
    prompt('second_number')
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end
  # binding.pry
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3).include?(operator) && (operator )
      break
    elsif operator == '4' && number2.to_f == 0.0
      prompt('divide_by_zero')
    elsif operator == '4' && number2.to_f != 0.0
      break
    else
      prompt('choose_1to4')
    end
  end
  # binding.pry
  prompt('operation_on_numbers')

  result =
    case operator
    when '1'
      number1.to_f() + number2.to_f()
    when '2'
      number1.to_f() - number2.to_f()
    when '3'
      number1.to_f() * number2.to_f()
    when '4'
      number1.to_f() / number2.to_f()
    end
  # binding.pry
  binding.pry
  format(prompt('result'), result)# right now formatting with prompt function and this line doesn't work
                                  # correctly.  Using puts it does by need to return the string in prompt.

  prompt('another_calculation') #Doesn't work correctly with prompt right now.
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt('end_phrase')


VALID_CHOICES = { 'paper' => '1',
                  'scissors' => '2',
                  'rock' => '3' }

def prompt(message)
  Kernel.puts("=> #{message}")
end
#Alternate way to do display, harder to understand what's going on though
def display_result(player, computer)
  key = VALID_CHOICES[player] + VALID_CHOICES[computer]
  if %w(12 23 31).include?(key)
    prompt("You lose!")
  elsif %w(21 32 13).include?(key)
    prompt("You win!")
  else
    prompt("It's a tie!")
  end
end
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.keys.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.keys.include?(choice)
      break
    else
      prompt("Invalid choice.  Please enter a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.keys.sample
  prompt("You chose #{choice}.  Computer chose #{computer_choice}.")
  display_result(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end
prompt("Thank you for playing.  Good bye!")

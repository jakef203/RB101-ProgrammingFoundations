
# VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_CHOICES = { 'r' => 'rock',
                 'p' => 'paper',
                 'sc' => 'scissors',
                 'sp' => 'spock',
                 'l' => 'lizard' }
def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  what_beats_what = { 'rock' => ['scissors', 'lizard'],
                      'paper' => ['spock', 'rock'],
                      'scissors' => ['lizard', 'paper'],
                      'spock' => ['rock', 'scissors'],
                      'lizard' => ['paper', 'spock'] }
  what_beats_what[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    choice_prompt = <<-MSG
  Choose one of the following:
      'r' for rock
      'p' for paper
      'sc' for scissors
      'sp' for spock
      'l' for lizard
    MSG
    prompt(choice_prompt)
    choice = Kernel.gets().chomp()
    if %w(r p sc sp l).include?(choice)
      break
    else
      prompt("Invalid choice.  Please enter a valid choice.")
    end
  end
  choice = VALID_CHOICES[choice]
  computer_choice = VALID_CHOICES.values.sample
  
  prompt("You chose #{choice}.  Computer chose #{computer_choice}.")
  display_result(choice, computer_choice)
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing.  Good bye!")
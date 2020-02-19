
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

def result(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def update_score(result, player_score, computer_score)
  if result == "You won!"
    [player_score + 1, computer_score]
  elsif result == "Computer won!"
    [player_score, computer_score + 1]
  else
    [player_score, computer_score]
  end
end

prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard!")
prompt("First to 5 wins.  Press 'p' to play.")
loop do
  player_score = 0
  computer_score = 0
  until player_score == 5 || computer_score == 5
    choice = ''
    loop do
      prompt("The score is: Player - #{player_score} : " \
      "Computer - #{computer_score}")
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
    puts result(choice, computer_choice)
    player_score, computer_score =
      update_score(result(choice, computer_choice),
                   player_score, computer_score)
  end
  if player_score == 5
    prompt("You were the first to 5!")
  else
    prompt("Computer was the first to 5!")
  end
  prompt("Do you want to start another series?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing.  Good bye!")

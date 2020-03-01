
VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'sp' => 'spock',
                  'l' => 'lizard' }

def prompt(message)
  puts("=> #{message}")
end

def clear
  system('clear') || system('cls')
end

def win?(first, second)
  what_beats_what = { 'rock' => ['scissors', 'lizard'],
                      'paper' => ['spock', 'rock'],
                      'scissors' => ['lizard', 'paper'],
                      'spock' => ['rock', 'scissors'],
                      'lizard' => ['paper', 'spock'] }
  what_beats_what[first].include?(second)
end

def display_current_score(total_score)
  prompt("The score is: Player - #{total_score[:player]} : " \
  "Computer - #{total_score[:computer]}")
end

def display_choices
  choice_prompt = <<-MSG
  Choose one of the following:
      'r' for rock
      'p' for paper
      'sc' for scissors
      'sp' for spock
      'l' for lizard
    MSG
  prompt(choice_prompt)
end

def choices
  player_choice = nil
  loop do
    player_choice = gets.chomp
    if %w(r p sc sp l).include?(player_choice)
      break
    else
      clear
      prompt("Invalid choice.  Please enter a valid choice.")
      display_choices
    end
  end
  clear
  player_choice = VALID_CHOICES[player_choice]
  computer_choice = VALID_CHOICES.values.sample
  [player_choice, computer_choice]
end

def display_result(player, computer)
  prompt("You chose #{player}.  Computer chose #{computer}.")
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_score(player, computer, total_score)
  if win?(player, computer)
    total_score[:player] += 1
  elsif win?(computer, player)
    total_score[:computer] += 1
  else
    total_score
  end
end

def grand_winner?(total_score)
  total_score[:player] == 5 || total_score[:computer] == 5
end

def declare_grand_winner(total_score)
  if total_score[:player] == 5
    prompt("You are the grand winner!")
  else
    prompt("Computer is the grand winner!")
  end
end

def play_again?
  answer = gets.chomp
  clear
  answer.downcase.start_with?('y')
end

prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard!")
prompt("First to win 5 games will be the grand winner.  " \
        "Press any button to play.")
gets.chomp
clear

loop do
  total_score = { player: 0, computer: 0 }
  until grand_winner?(total_score)
    display_current_score(total_score)
    display_choices
    choice, computer_choice = choices
    display_result(choice, computer_choice)
    update_score(choice, computer_choice, total_score)
  end
  declare_grand_winner(total_score)
  prompt("Do you want to start another series?")
  break unless play_again?
end

prompt("Thank you for playing.  Good bye!")

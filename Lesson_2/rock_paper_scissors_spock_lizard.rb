require 'io/console'
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

def display_welcome_message
  prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard!")
  prompt("First to win 5 games will be the grand winner.")
end

def continue_game
  prompt("Press any key to begin game.")
  STDIN.getch
  print "            \r"
end

def win?(first, second)
  what_beats_what = { 'rock' => ['scissors', 'lizard'],
                      'paper' => ['spock', 'rock'],
                      'scissors' => ['lizard', 'paper'],
                      'spock' => ['rock', 'scissors'],
                      'lizard' => ['paper', 'spock'] }
  what_beats_what[first].include?(second)
end

def display_current_score(score)
  prompt("The score is: Player - #{score[:player]} : " \
  "Computer - #{score[:computer]}")
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

def get_players_choices
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

def update_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  else
    score
  end
end

def grand_winner?(score)
  score[:player] == 5 || score[:computer] == 5
end

def declare_grand_winner(score)
  if score[:player] == 5
    prompt("You are the grand winner!")
  else
    prompt("Computer is the grand winner!")
  end
end

def play_again?
  prompt("Do you want to start another series?")
  answer = gets.chomp
  clear
  answer.downcase.start_with?('y')
end

display_welcome_message
continue_game
clear

loop do
  score = { player: 0, computer: 0 }
  until grand_winner?(score)
    display_current_score(score)
    display_choices
    choice, computer_choice = get_players_choices
    display_result(choice, computer_choice)
    update_score(choice, computer_choice, score)
  end
  declare_grand_winner(score)
  break unless play_again?
end

prompt("Thank you for playing.  Good bye!")

require 'io/console'

def prompt(message)
  puts "--> #{message}"
end

def continue_game
  prompt "Press any key to begin game."
  STDIN.getch
  print "            \r"
end

def clear
  system('clear') || system('cls')
end

def get_marker_choice
  marker1 = nil
  marker2 = nil
  loop do
    prompt "Player 1 select 'X' or 'O' as your marker." 
    marker1 = gets.upcase.chomp
    puts marker1
    break if ['X', 'O'].include?(marker1)
    clear
    prompt "Invalid input."
  end
  marker2 = marker1 == 'X' ? 'O' : 'X'
  [marker1, marker2]
end

# def display_playing_board(marker_array)
#   puts "#{'Active Board'.center(23)}"
#   puts "#{('-' * 12).center(23)}"
#   puts 
#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[7].center(7)}|#{marker_array[8].center(7)}|#{marker_array[9].center(7)}"
#   puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}"

#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[4].center(7)}|#{marker_array[5].center(7)}|#{marker_array[6].center(7)}"
#   puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}"

#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[1].center(7)}|#{marker_array[2].center(7)}|#{marker_array[3].center(7)}"
#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
# end
def display_board(marker_array)
  buffer = ' ' * 15
  puts "#{'Active Board'.center(23)}#{buffer}#{'Key Board'.center(23)}"
  puts "#{('-' * 12).center(23)}#{buffer}#{('-' * 12).center(23)}"
  puts 
  
  puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}#{buffer}#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
  puts "#{marker_array[7].center(7)}|#{marker_array[8].center(7)}|#{marker_array[9].center(7)}" \
        "#{buffer}#{'7'.center(7)}|#{'8'.center(7)}|#{'9'.center(7)}"
  puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}#{buffer}#{('_' * 7)}|#{('_' * 7)}|#{('_' * 7)}"

  puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}#{buffer}#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
  puts "#{marker_array[4].center(7)}|#{marker_array[5].center(7)}|#{marker_array[6].center(7)}" \
        "#{buffer}#{'4'.center(7)}|#{'5'.center(7)}|#{'6'.center(7)}"
  puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}#{buffer}#{('_' * 7)}|#{('_' * 7)}|#{('_' * 7)}"

  puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}#{buffer}#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
  puts "#{marker_array[1].center(7)}|#{marker_array[2].center(7)}|#{marker_array[3].center(7)}" \
        "#{buffer}#{'1'.center(7)}|#{'2'.center(7)}|#{'3'.center(7)}"
  puts "#{' ' * 7}|#{' ' * 7}|#{' ' * 7}#{buffer}#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
end
# def display_key_board
#   puts "#{'Key Board'.center(23)}"
#   puts "#{('-' * 12).center(23)}"
#   puts 
#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[7].center(7)}|#{marker_array[8].center(7)}|#{marker_array[9].center(7)}"
#   puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}"

#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[4].center(7)}|#{marker_array[5].center(7)}|#{marker_array[6].center(7)}"
#   puts "#{'_' * 7}|#{'_' * 7}|#{'_' * 7}"

#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
#   puts "#{marker_array[1].center(7)}|#{marker_array[2].center(7)}|#{marker_array[3].center(7)}"
#   puts "#{(' ' * 7)}|#{(' ' * 7)}|#{(' ' * 7)}"
# end


def get_move_choice(marker_array, player_turn)
  prompt "Player #{player_turn} enter an open location for your next move:"
  loop do
    choice = gets.chomp.to_i
    return choice if valid_choice?(marker_array, choice)
    prompt "Invalid choice.  Please enter an open position between 1 and 9."
  end
end

def valid_choice?(marker_array, choice)
  (1..9).to_a.include?(choice) && marker_array[choice] == ' '
end

def game_won?(array, marker)
  check_array = [marker] * 3
  [array[1], array[2], array[3]] == check_array ||
  [array[4], array[5], array[6]] == check_array ||
  [array[7], array[8], array[9]] == check_array ||
  [array[1], array[4], array[7]] == check_array ||
  [array[2], array[5], array[8]] == check_array ||
  [array[3], array[6], array[9]] == check_array ||
  [array[1], array[5], array[9]] == check_array ||
  [array[3], array[5], array[7]] == check_array 
end

def board_full?(marker_array)
  !marker_array.include?(' ')
end

def display_results(winner = 'no')
  case winner
  when 'no'
    prompt "It's a tie! You both suck!!"
  when '1'
    prompt "Player 1 wins! Hurray!!"
  when '2'
    prompt "Player 2 wins! Yeah booiiiy!"
  end
end

def play_again?
  prompt("Would you like to play again?")
  answer = gets.chomp
  clear
  answer.downcase.start_with?('y')
end

player_marker = { '1' => nil, '2' => nil }
prompt("Welcome to Tic Tac Toe!")
player_marker['1'], player_marker['2'] = get_marker_choice
prompt "Player 1 will be '#{player_marker['1']}', Player 2 will be '#{player_marker['2']}'"
continue_game
loop do 
  player_turn = '1'
  marker_array = ['-1'] + [' '] * 9
  loop do
    marker = player_marker[player_turn]
    display_board(marker_array)
    choice = get_move_choice(marker_array, player_turn)
    marker_array[choice] = marker
    clear
    if game_won? marker_array, marker
      display_board marker_array
      display_results player_turn
      break
    elsif board_full? marker_array
      display_board marker_array
      display_results
      break
    else
      player_turn = player_turn == '1' ? '2' : '1'
      next
    end
  end
  break unless play_again?
end
prompt "Goodbye!"

# end

# p game_won? marker_array
# p board_full? marker_array
#   choice = get_players_choice(marker_array)
#   add_choice_to_board

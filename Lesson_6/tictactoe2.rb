## Following along with LS solution
require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[3, 5, 7], [1, 5, 9]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
def prompt(message)
  puts "--> #{message}"
end

def continue_game
  prompt "Press any key to begin game."
  STDIN.getch
  print "            \r"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, score)
  system "clear"
  puts "The score is Player: #{score[:player]}, Computer: #{score[:computer]}"
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# robocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, punc = ',', ending = 'or')
  if array.size == 1
    array[0].to_s
  elsif array.size == 2
    "#{array[0]} or #{array[1]}"
  else
    separator = punc + ' '
    "#{array[0..-2].join(separator)}#{separator}#{ending} #{array[-1]}"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  # if computer_win_row?(brd)
  #   square = computer_win_row?(brd)
  if computer_block_player?(brd)
    square = computer_block_player?(brd)
  # elsif brd[5] == INITIAL_MARKER
  #   square = 5
  else 
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def computer_win_row?(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      line.each do |pos|
        return pos if brd[pos] == INITIAL_MARKER
      end
    end
  end
  nil
end

# def computer_block_player?(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count('X') == 2
#       brd.select { |k, v| line.include?(k) && v == ' '}.keys.first
#         # if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
#     #    brd.values_at(*line).count(INITIAL_MARKER) == 1
#     #   line.each do |pos|
#     #     return pos if brd[pos] == INITIAL_MARKER
#     end
#   end
#   nil
# end

def computer_block_player?(brd)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd)
  end
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def won_5_games?(score)
  score[:player] == 2 || score[:computer] == 2
end


def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(brd, score)
  if detect_winner(brd) == 'Player'
    score[:player] += 1
  else
    score[:computer] += 1
  end
end

def declare_winner(score)
  winner = score.key(2).to_s.capitalize
  prompt "#{winner} is the first to win 5 games!"
end

def play_again?(score)
  prompt "Play another best of 5? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

puts "Welcome to Tic Tac Toe! First to 5 games is winner."
continue_game
loop do
  score = { player: 0, computer: 0 }
  until won_5_games?(score)
    board = initialize_board
    loop do
      display_board(board, score)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board, score)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      update_score(board, score)
    else
      prompt "It's a tie!"
    end
    continue_game unless won_5_games?(score)
  end
  declare_winner(score)
  break unless play_again?(score)
end

prompt "Thanks for playing Tic Tac Toe!  Good bye!"

# |     |
# X  |  X  |  O  
#    |     |
# -----+-----+-----
#    |     |
# O  |  X  |     
#    |     |
# -----+-----+-----
#    |     |
# O  |     |     
#    |     |

require 'io/console'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[3, 5, 7], [1, 5, 9]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
GO_FIRST = 'choose' # can also set this to 'player' or 'computer'
def prompt(message)
  puts "--> #{message}"
end

def continue_game
  prompt "Press any key to begin game."
  STDIN.getch
  print "            \r"
end

def who_goes_first?
  go_first = nil
  loop do
    prompt "Who will go first?  Enter 'C' for computer or 'P' for player:"
    go_first = gets.chomp
    if ['c', 'p'].include?(go_first)
      return (go_first == 'p' ? 'player' : 'computer')
    end
    prompt "Invalid choice. Please choose 'C' or 'P'."
  end
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, score)
  buffer = ' ' * 15
  system "clear"
  puts "The score is Player: #{score[:player]}, Computer: #{score[:computer]}"
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts 'Main'.center(17) + buffer + 'Key'.center(17)
  puts ""
  puts "     |     |     #{buffer}     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  #{buffer}" \
       "  1  |  2  |  3  "
  puts "     |     |     #{buffer}     |     |     "
  puts "-----+-----+-----#{buffer}-----+-----+-----"
  puts "     |     |     #{buffer}     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  #{buffer}" \
       "  4  |  5  |  6  "
  puts "     |     |     #{buffer}     |     |     "
  puts "-----+-----+-----#{buffer}-----+-----+-----"
  puts "     |     |     #{buffer}     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  #{buffer}" \
       "  7  |  8  |  9  "
  puts "     |     |     #{buffer}     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

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
    "#{array[0]} #{ending} #{array[1]}"
  else
    separator = punc + ' '
    "#{array[0..-2].join(separator)}#{separator}#{ending} #{array[-1]}"
  end
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
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
  square =
    if computer_win_row?(brd)
      computer_win_row?(brd)
    elsif computer_block_player?(brd)
      computer_block_player?(brd)
    elsif brd[5] == INITIAL_MARKER
      5
    else
      empty_squares(brd).sample
    end
  brd[square] = COMPUTER_MARKER
end

def alternate_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
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

def computer_block_player?(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      line.each do |pos|
        return pos if brd[pos] == INITIAL_MARKER
      end
    end
  end
  nil
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def won_5_games?(score)
  score[:player] == 5 || score[:computer] == 5
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
  winner = score.key(5).to_s.capitalize
  prompt "#{winner} is the first to win 5 games!"
end

def play_again?
  prompt "Play another best of 5? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

system "clear"
prompt "Welcome to Tic Tac Toe! First to 5 games is winner."
if ['player', 'computer'].include?(GO_FIRST)
  current_player = GO_FIRST
  prompt "#{current_player.capitalize} will go first."
  continue_game
end
loop do
  score = { player: 0, computer: 0 }
  until won_5_games?(score)
    board = initialize_board
    if GO_FIRST == 'choose'
      current_player = who_goes_first?
      prompt "#{current_player.capitalize} will go first."
      continue_game
    end
    loop do
      display_board(board, score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
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
  break unless play_again?
end

prompt "Thanks for playing Tic Tac Toe!  Good bye!"

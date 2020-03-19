require 'pry'
require 'io/console'
GAME_MAX = 21 # Can change to 31, 41, 51, etc.
DEALER_STAY = 17
CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                '8' => 8, '9' => 9, '10' => 10, 'jack' => 10, 'queen' => 10,
                'king' => 10, 'ace' => 11 }

def game_name
  case GAME_MAX
  when 21 then "Twenty-One"
  when 31 then "Thirty-One"
  when 41 then "Forty-One"
  when 51 then "Fifty-One"
  else GAME_MAX
  end
end

def initialize_deck
  suit = ('2'..'10').to_a + ['jack', 'queen', 'king', 'ace']
  deck = suit * 4
  deck.shuffle
end

def reset_card_hands
  { player:  { cards: [],
               total: 0,
               aces_with_11: 0 },
    dealer:  { cards: [],
               total: 0,
               aces_with_11: 0 } }
end

def prompt(message)
  puts "--> #{message}"
end

def continue_game
  STDIN.getch
  print "            \r"
end

def won_5_games(score)
  score[:player] == 5 || score[:dealer] == 5
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

def deal_initial_hand(card_deck, card_hand)
  deal_card(card_deck, card_hand, :player)
  deal_card(card_deck, card_hand, :dealer)
  deal_card(card_deck, card_hand, :player)
  deal_card(card_deck, card_hand, :dealer)
end

# rubocop:disable Metrics/AbcSize
def deal_card(card_deck, card_hand, person)
  new_card = card_deck.pop
  card_hand[person][:cards] << new_card
  card_hand[person][:total] += CARD_VALUES[new_card]
  card_hand[person][:aces_with_11] += 1 if new_card == 'ace'
  if card_hand[person][:total] > GAME_MAX &&
     card_hand[person][:aces_with_11] > 0
    card_hand[person][:total] -= 10
    card_hand[person][:aces_with_11] -= 1
  end
end
# rubocop:enable Metrics/AbcSize

def hit_or_stay?
  answer = nil
  loop do
    prompt "Enter 'S' to stay.  Enter 'H' to hit."
    answer = gets.chomp
    break if ['s', 'h'].include?(answer.downcase)
    prompt "Please enter correct letter."
  end
  answer == 's' ? 'stay' : 'hit'
end

def busted?(card_hand, person)
  card_hand[person][:total] > GAME_MAX
end

def detect_result(card_hand)
  if card_hand[:dealer][:total] > GAME_MAX
    :dealer_busted
  elsif card_hand[:player][:total] > GAME_MAX
    :player_busted
  elsif card_hand[:dealer][:total] > card_hand[:player][:total]
    :dealer
  elsif card_hand[:dealer][:total] < card_hand[:player][:total]
    :player
  else
    :tie
  end
end

def display_card_totals(card_hand)
  puts "----------"
  prompt "Dealer has #{joinor(card_hand[:dealer][:cards], ',', 'and')} " \
         "for a total of #{card_hand[:dealer][:total]}."
  prompt "Player has: #{joinor(card_hand[:player][:cards], ',', 'and')} " \
         "for a total of #{card_hand[:player][:total]}"
  puts "----------"
end

def display_result(card_hand, score)
  result = detect_result(card_hand)
  update_score(result, score)
  display_card_totals(card_hand)

  case result
  when :player_busted
    prompt "Player busts!  Dealer wins!"
  when :dealer_busted
    prompt "Dealer busts!  Player wins!"
  when :player
    prompt "Player wins!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def update_score(result, score)
  if [:player, :dealer_busted].include?(result)
    score[:player] += 1
  elsif [:dealer, :player_busted].include?(result)
    score[:dealer] += 1
  end
end

def play_again?
  prompt "Do you want to play first to 5 again?"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def display_overall_winner(score)
  puts ""
  winner = score.key(5).to_s.capitalize
  prompt "#{winner} is the first to 5 games!!"
end

system "clear"
prompt "Welcome to #{game_name}!!"
prompt "First to win 5 games is winner."
prompt "(Press any button to continue during game unless otherwise prompted.)"
continue_game
loop do
  score = { player: 0, dealer: 0 }
  until won_5_games(score)
    system "clear"
    card_deck = initialize_deck
    card_hand = reset_card_hands
    deal_initial_hand(card_deck, card_hand)
    prompt "The score is: Player: #{score[:player]}, Dealer: #{score[:dealer]}"
    prompt "Dealer has: #{card_hand[:dealer][:cards][1]} and ?"
    prompt "Player has: #{joinor(card_hand[:player][:cards], ',', 'and')} " \
          "for a total of #{card_hand[:player][:total]}"
    answer = nil
    loop do
      answer = hit_or_stay?
      break if answer == 'stay'
      deal_card(card_deck, card_hand, :player)
      prompt "Player chose to hit!"
      continue_game
      prompt "Player has: #{joinor(card_hand[:player][:cards], ',', 'and')} " \
            "for a total of #{card_hand[:player][:total]}"
      if busted?(card_hand, :player)
        continue_game
        puts ""
        break
      end
    end

    if busted?(card_hand, :player)
      display_result(card_hand, score)
      continue_game
      next
    else
      prompt "Player stays with a #{card_hand[:player][:total]}."
      continue_game
      puts ""
    end
    prompt "Dealer has: #{joinor(card_hand[:dealer][:cards], ',', 'and')} " \
          "for a total of #{card_hand[:dealer][:total]}."
    loop do
      break if card_hand[:dealer][:total] >= DEALER_STAY
      prompt "Dealer hits!"
      continue_game
      deal_card(card_deck, card_hand, :dealer)
      puts ""
      break if busted?(card_hand, :dealer)
      prompt "Dealer has: #{joinor(card_hand[:dealer][:cards], ',', 'and')} " \
                   "for a total of #{card_hand[:dealer][:total]}."
    end

    if busted?(card_hand, :dealer)
      display_result(card_hand, score)
      continue_game
      next
    else
      prompt "Dealer stays at #{card_hand[:dealer][:total]}."
      puts
      continue_game
    end
    display_result(card_hand, score)
    continue_game
    next
  end
  display_overall_winner(score)
  break unless play_again?
end
prompt "Thank you for playing #{game_name}! Good bye!"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
1 + rand(11)
end

def display_card_total(hand)
puts  "Your cards add up to #{hand}"
hand
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
if total == 21
  puts "Congratulations! You win with #{total}!"
else
  puts "Sorry, you hit #{total}. Thanks for playing!"
end
end

def initial_round
hand = deal_card + deal_card
display_card_total(hand)
hand
end

def hit?(cards)
until cards >= 21
  prompt_user
  answer = get_user_input
  if answer == "s"
    display_card_total(cards)
  elsif answer == "h"
    cards += deal_card
    display_card_total(cards)
  else
      invalid_command
    end
  end
end_game(cards)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
welcome
hand = initial_round
hit?(hand)
end

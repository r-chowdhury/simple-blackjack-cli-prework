def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum_card = card1 + card2
  display_card_total(sum_card)
  return sum_card
end

def hit?(sum_card)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
     sum_card += deal_card
    return sum_card
  elsif user_input == 's'
  else
    invalid_command
    prompt_user
  end
  return sum_card
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

def end_game(sum_card)
  puts "Sorry, you hit #{sum_card}. Thanks for playing!"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum_card = initial_round
    until sum_card >= 21 
      sum_card = hit?(sum_card)
      display_card_total(sum_card)
  end_game(sum_card)
    end
end
    

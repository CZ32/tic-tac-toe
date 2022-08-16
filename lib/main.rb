def ask_user_to_play_new_game
  answer = ''
  until answer == 'y' || answer == 'n' do
   puts "Would you like to start a new game?"
   answer = gets.chomp.downcase
  end
  if answer == 'y'
    puts "starting new game"
  else
    puts "thanks for playing"
  end
end

def play_game
  game = Game.new
  game.play
end

play_game

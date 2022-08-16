require_relative 'board.rb'
class Game
  include Display
  ###
  # Game needs:
  # -Board
  # -first player
  # -second player
  # -current playe
  attr_reader :player_one, :player_two, :current_player, :board
  def initialize
    @board = Board.new
    @player_one = nil
    @player_two = nil
    @current_player = nil
  end
  # Methods
  # - Play a game
  # - Create Player
  # - take a turn
  # - game set up
  # - player turns
  # - turn input
  # - Switch current player
  # - conclusion

  def play
    game_set_up
    puts board
    player_turns
    conclusion
  end

  def create_player(number, symbol)
    display_player_name_prompt(number)
    name = gets.chomp
    Player.new(name, symbol)
  end

  def turn (player)
    cell = turn_input(player)
    board.update(cell - 1, player.symbol)
    p board
  end


  private
  def game_set_up
    puts display_intro
    @first_player = create_player(1, '0')
    @second_player = create_player(2, 'X')
  end

  def player_turns
    @current_player = player_one
    until -1
      puts @current_player.name
      switch_current_player
    end
  end

  def switch_current_player
    current_player == player_one ? player_two : player_one
  end







end

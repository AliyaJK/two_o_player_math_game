require_relative 'player'
require_relative 'math_question'
require_relative 'game'
require_relative 'game_io'

player1_name = GameIO.get_user_input("Enter Player 1's name:")
player2_name = GameIO.get_user_input("Enter Player 2's name:")

player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

game = Game.new(player1, player2)
game.start_game

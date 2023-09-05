class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def start_game
    GameIO.display_message("Welcome to the Two-Player Math Game!")

    loop do
      current_player = @players[@current_player_index]
      other_player = @players[1 - @current_player_index]

      question = MathQuestion.new
      current_player.answer_question(question)

      GameIO.display_message("Current Scores:")
      GameIO.display_message(@players[0].to_s)
      GameIO.display_message(@players[1].to_s)

      if current_player.has_lives?
        switch_player
      else
        announce_winner(other_player)
        break
      end
    end
  end

  def switch_player
    @current_player_index = (@current_player_index + 1) % 2
  end

  def announce_winner(winner)
    GameIO.display_message("#{winner.name} wins with a score of #{winner.score}!")
    GameIO.display_message("#{other_player.name}'s score: #{other_player.score}")
  end
end

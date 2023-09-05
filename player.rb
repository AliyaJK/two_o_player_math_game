class Player
  attr_reader :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def answer_question(question)
    GameIO.display_message("#{@name}, here's your question:")
    GameIO.display_message(question.to_s)

    answer = GameIO.get_user_input("#{@name}, what's your answer?")
    
    if question.check_answer(answer.to_i)
      @score += 1
      GameIO.display_message("Correct! Your score: #{@score}")
    else
      @lives -= 1
      GameIO.display_message("Incorrect! You lose a life. Lives remaining: #{@lives}")
    end
  end

  def has_lives?
    @lives > 0
  end

  def to_s
    "#{@name}: Score - #{@score}, Lives - #{@lives}"
  end
end

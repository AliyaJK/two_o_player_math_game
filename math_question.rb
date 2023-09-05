class MathQuestion
  attr_reader :question_text, :correct_answer

  def initialize
    generate_question
  end

  def check_answer(answer)
    answer == @correct_answer
  end

  def to_s
    @question_text
  end

  private

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @correct_answer = num1 + num2
    @question_text = "What is #{num1} + #{num2}?"
  end
end

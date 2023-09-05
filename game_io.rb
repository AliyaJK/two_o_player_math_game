class GameIO
  def self.get_user_input(prompt)
    puts prompt
    gets.chomp
  end

  def self.display_message(message)
    puts message
  end
end

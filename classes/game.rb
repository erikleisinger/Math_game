class Game
  
  attr_reader :player

  def initialize
    @question_count = 0
    @player = 2
  end
  

  def message(text, bool)

    if text.length > 0
    puts text
    end

    if bool == true
      puts "Press any key to continue"
    end

    gets.chomp

  end

  def new_turn
    if @player == 1
      @player = 2
    else
      @player = 1
    end
    puts "Player #{@player}: "
    self.question
  end

  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "What is #{num1} + #{num2}?"
    answer = gets.chomp

    end_turn(answer.to_i == num1 + num2)
  end

  def end_turn(result)
    if result == true
      puts "CORRECT"
      1
    else
      puts "FALSE"
      -1
    end
  end

  def end_game(p1, p2)
    puts "GAME OVER"
    gets.chomp
    puts "Final score: "
    gets.chomp
    puts "Player 1: (#{p1}/3) | Player 2: (#{p2}/3)"
    if p1 == 0
      puts "Congratulations Player 2!!"
      gets.chomp
    else 
      puts "Congratulations Player 1!!"
      gets.chomp
    end
    puts "Bye bye for now"
    gets.chomp
  end

end
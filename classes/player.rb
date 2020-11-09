class Player 

  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def set_lives(result)
    if result == 1
    else
      self.lives -= 1
    end
  end
end


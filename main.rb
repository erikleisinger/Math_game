require './classes/player.rb'
require './classes/game.rb'

game = Game.new

player1 = Player.new("Erik")
player2 = Player.new("Erik")

# game.message("Welcome to the game.", true)
# player1_name = game.message("What is player 1's name?", false)
# player1 = Player.new(player1_name)

# game.message("Ladies and gentlemen, welcome to the stage...", false)
# game.message("Player 1: #{player1_name}!!!", true)

# player2_name = game.message("What is player 2's name?", false)
# player2 = Player.new(player2_name)

# game.message("And in this corner, player 2...", false)
# game.message("#{player2_name}!!!", true)

# puts game.new_turn

  while player1.lives > 0 && player2.lives > 0 do
  # new_turn method asks a math question, receives user input and returns a boolean
  ans = game.new_turn

  # adjust lives based on boolean (true/false) and current player, managed by Game
  if game.player == 1
    player1.set_lives(ans)
  else 
    player2.set_lives(ans)
  end
  puts "Score: P1: (#{player1.lives}/3) | P2: (#{player2.lives}/3)"

  # end game condition - if either score is 0, run method end_game
  if player1.lives == 0 || player2.lives == 0
    game.end_game(player1.lives, player2.lives)
  else
    game.message("", true)
  end
end

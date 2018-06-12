class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def rps_game
    if (@player1 == "rock" && @player2 == "scissors") || (@player2 == "rock" && @player1 == "scissors")
      return "Rock wins!"
    elsif (@player1 == "rock" && @player2 == "paper") || (@player2 == "paper" && @player1 == "rock")
      return "Paper wins!"
    elsif (@player1 == "scissors" && @player2 == "paper") || (@player2 == "paper" && @player1 == "scissors")
      return "Scissors wins!"
    elsif @player1 == @player2
      return "Draw!"
    end
  end

end

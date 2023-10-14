class Math_game
  attr_accessor :player1, :player2, :question
  def initialize(p1, p2, q)
    @player1 = p1
    @player2 = p2
    @question = q
  end

  def switch_player
    @player1, @player2 = @player2, @player1
  end

end

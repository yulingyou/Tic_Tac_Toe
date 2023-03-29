class TicTacToe
  def initialize
    @board = Array.new(3) { Array.new(3, "") }
  end

  def board
    @board
  end
end
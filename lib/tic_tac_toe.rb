class TicTacToe
  def initialize
    @board = Array.new(3) { Array.new(3, "") }
    @current_player = "X"
  end

  def board
    @board
  end

  def take_turn(row, col)
    if @board[row][col] == ""
      @board[row][col] = @current_player
      switch_players
      return true
    else
      return false
    end
  end

  def switch_players
    if @current_player == "X"
      @current_player = "O"
    else
      @current_player = "X"
    end
  end
end
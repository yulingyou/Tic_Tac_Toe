class TicTacToe
  def initialize
    @board = Array.new(3) { Array.new(3, "") }
    @current_player = "X"
    @winner = nil
  end

  def board
    @board
  end

  def take_turn(row, col)
    if @board[row][col] == ""
      @board[row][col] = @current_player
      check_winner
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

  def winner
    @winner
  end

  def check_winner
    # Check rows
    @board.each do |row|
      if row.all? { |cell| cell == "X" }
        @winner = "X"
      elsif row.all? { |cell| cell == "O" }
        @winner = "O"
    end
    end


    # Check columns
    @board.transpose.each do |col|
      if col.all? { |cell| cell == "X" }
        @winner = "X"
      elsif col.all? { |cell| cell == "O" }
        @winner = "O"
    end
    end
  end
end
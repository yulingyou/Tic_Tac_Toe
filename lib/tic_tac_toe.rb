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
    if row.between?(0,2) && col.between?(0,2) && @board[row][col] == ""
      if @board[row][col] == ""
        @board[row][col] = @current_player
        check_winner
        switch_players
        return true
      else
        return false
      end
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

        # Check diagonals
        # puts "board", @board
        if [@board[0][0], @board[1][1], @board[2][2]].all? { |cell| cell == "X" } ||
          [@board[0][2], @board[1][1], @board[2][0]].all? { |cell| cell == "X" }
          @winner = "X"
        elsif [@board[0][0], @board[1][1], @board[2][2]].all? { |cell| cell == "O" } ||
          [@board[0][2], @board[1][1], @board[2][0]].all? { |cell| cell == "O" }
          @winner = "O"
    
        end

  end



    

    # if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[1][1] != ""
    #   @winner = @board[1][1]
    # end
    # if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[1][1] != ""
    #   @winner = @board[1][1]
    # end


end
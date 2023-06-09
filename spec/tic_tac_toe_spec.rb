require 'rspec'
require 'tic_tac_toe'

describe TicTacToe do
  describe "#initialize" do
    it "creates an empty 3x3 board" do
      game = TicTacToe.new
      expect(game.board).to eq([["", "", ""], ["", "", ""], ["", "", ""]])
    end
  end

  describe "#take_turn" do
    it "updates the board with the player's symbol if the field is not already taken" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      expect(game.board).to eq([["X", "", ""], ["", "", ""], ["", "", ""]])
    end

    it "does not update the board if the field is already taken" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      expect(game.take_turn(0, 0)).to be_falsey
    end

    it "switches the current player after each turn" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      expect(game.take_turn(1, 1)).to be_truthy
      expect(game.board).to eq([["X", "", ""], ["", "O", ""], ["", "", ""]])
    end
  end

  describe "#winner" do
    it "returns nil if no player has won yet" do
      game = TicTacToe.new
      expect(game.winner).to be_nil
    end

    it "returns 'X' if X has won horizontally" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      game.take_turn(1, 0)
      game.take_turn(0, 1)
      game.take_turn(1, 1)
      expect(game.take_turn(0, 2)).to be_truthy
      expect(game.winner).to eq("X")
    end

    it "returns 'O' if O has won vertically" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      game.take_turn(0, 1)
      game.take_turn(1, 0)
      game.take_turn(1, 1)
      game.take_turn(0, 2)
      expect(game.take_turn(2, 1)).to be_truthy
      expect(game.winner).to eq("O")
    end

    it "returns 'X' if X has won diagonally" do
      game = TicTacToe.new
      game.take_turn(0, 0)
      game.take_turn(0, 1)
      game.take_turn(1, 1)
      game.take_turn(1, 0)
      expect(game.take_turn(2, 2)).to be_truthy
      expect(game.winner).to eq("X")
    end
  end
end
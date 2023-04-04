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
  end
end
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
end
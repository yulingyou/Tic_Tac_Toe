require 'rspec'
require_relative 'tic_tac_toe'

describe TicTacToe do
  describe "#initialize" do
    it "creates an empty 3x3 board" do
      game = TicTacToe.new
      expect(game.board).to eq([["", "", ""], ["", "", ""], ["", "", ""]])
    end
  end
end
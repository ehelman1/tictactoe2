require 'minitest/autorun'
require_relative "tictactoe_game.rb"

class TicTacToeGame < Minitest::Test

	def test_play_game_is_over
		assert_equal(true, play_game)
		assert_equal(true, game_over?([1, 2, "X", 4, 5, "X", 7, 8, "X"], "X"))
		assert_equal(false, game_over?([1, 2, "O", 4, 5, "X", 7, 8, "X"], "X"))
	end





end
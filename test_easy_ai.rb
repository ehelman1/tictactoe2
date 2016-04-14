require 'minitest/autorun'
require_relative "easy_ai.rb"

class TestEasyAi < Minitest::Test

	def test_last_available_space
		assert_equal(1, get_move([1, "X", "O", "X", "O", "O", "O", "X", "O"]))
		assert_equal(3, get_move(["O", "X", 3, "X", "O", "O", "O", "X", "O"]))
	end
	
	def test_chooses_for_multiple_moves_available
		assert_includes([1, 2, 3], get_move([1, 2, 3, "X", "O", "O", "O", "X", "O"]))
		refute_includes([4, 5, 6, 7], get_move([1, 2, 3, "X", "O", "O", "O", "X", "O"]))
	end
	
	


























end
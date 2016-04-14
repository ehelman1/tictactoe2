require 'minitest/autorun'
require_relative "pick_ai.rb"

class TestPickAi < Minitest::Test


	def test_available_spaces
		assert_equal(1, get_move_sequential([1, 2, 3, 4, 5, 6, 7, 8, 9]))
		assert_equal(4, get_move_sequential(["X", "O", "O", 4, 5, 6, 7, 8, 9]))
	end







end
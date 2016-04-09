require 'minitest/autorun'
require_relative "tictactoe.rb"

class TestTictactoe <Minitest::Test 

    def test_array_of_board_is_there
        assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_board)
    end
	
	def test_board_is_updated_for_player_1
		assert_equal([1, 2, 3, 4, "X", 6, 7, 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9],4, "X"))
		assert_equal([1, "X", 3, 4, 5, 6, 7, 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9], 1, "X"))
		assert_equal([1, 2, 3, 4, 5, 6, "O", 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9], 6, "O"))
	end







end
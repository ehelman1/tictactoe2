require 'minitest/autorun'
require_relative "tictactoe.rb"

class TestTictactoe <Minitest::Test 

    def test_array_of_board_is_there
        assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_board)
    end
	
	def test_board_is_updated_for_marker
		assert_equal([1, 2, 3, 4, "X", 6, 7, 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9],4, "X"))
		assert_equal([1, "X", 3, 4, 5, 6, 7, 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9], 1, "X"))
		assert_equal([1, 2, 3, 4, 5, 6, "O", 8, 9], update_board([1, 2, 3, 4, 5, 6, 7, 8, 9], 6, "O"))
	end
	
	def test_space_is_valid
		assert_equal(false, valid_space?([1, 2, 3, 4, 5, 6, "X", 8, 9], 6, "X"))
		assert_equal(false, valid_space?([1, 2, "O", 4, 5, 6, 7, 8, 9], 2, "O"))
		assert_equal(false, valid_space?([1, 2, 3, 4, 5, 6, 7, "O", 9], 7, "O"))
	end
	
	def test_that_you_win
		assert_equal(true, win?([1, 2, "X", 4, 5, "X", 7, 8, "X"], [2, 5, 8], "X"))
		assert_equal(true, win?([1, "X", 3, 4, "X", 6, 7, "X", 9], [1, 4, 7], "X"))
	end





end
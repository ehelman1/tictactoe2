require 'minitest/autorun'
require_relative "tictactoe.rb"

class TestTictactoe <Minitest::Test 

    def test_array_of_board_is_there
        assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], game_board)
    end








end
require 'minitest/autorun'
require_relative "tictactoe_game.rb"

class TicTacToeGame < Minitest::Test

	def test_play_game_is_over
		player_1 = {:player_mode => Sequential.new, :marker => "X"  }
		player_2 = {:player_mode => Random.new,  :marker => "O" }
		board = create_new_board
		final_board = play_game(player_1, player_2, board)
		assert_equal(true, game_over?(final_board, "X") || game_over?(final_board, "O"))
	end
	
	def test_the_number_of_strings
		player_1 = {:player_mode => Sequential.new}
		player_2 = {:player_mode => Random.new}
		board = create_new_board
		final_board = play_game(player_1, player_2, board)
		remaining_board = get_available_spaces(final_board)
		assert_equal(true, remaining_board.count <= 4)
	end


end
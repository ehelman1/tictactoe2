require_relative "pick_ai.rb"
require_relative "easy_ai.rb"

def play_game(player_1, player_2, board)
	
	until game_over?(board, "X") == true || game_over?(board, "O") == true do
		move1 = player_1[:player_mode].get_move(board)
		board = update_board(board, move1 - 1, "X")
		break if game_over?(board, "X") == true || game_over?(board, "O") == true
		move2 = player_2[:player_mode].get_move(board)
		board = update_board(board, move2 - 1, "O")
	end
	board
	
end




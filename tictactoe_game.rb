require_relative "pick_ai.rb"
require_relative "easy_ai.rb"

def play_game(player_1, player_2, board)
	move = player_1[:player_mode].get_move(board)
	board = update_board(board, move - 1, player_1[:marker])
		if game_over?(board, player_1[:marker])
			board
		else
			play_game(player_2, player_1, board)
		end
end
	
	




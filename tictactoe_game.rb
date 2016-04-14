require_relative "pick_ai.rb"
require_relative "easy_ai.rb"

def play_game
	board = create_new_board
	simple_player = "X"
	sequential_player = "O"
	until game_over?(board, simple_player) == true || game_over?(board, sequential_player) == true do
		move1 = get_move(board)
		board = update_board(board, move1 - 1, simple_player)
		break if game_over?(board, simple_player) == true || game_over?(board, sequential_player) == true
		move2 = get_move_sequential(board)
		board = update_board(board, move2 - 1, sequential_player)
	end
	puts board
	game_over?(board, simple_player) == true || game_over?(board, sequential_player) == true
end

play_game


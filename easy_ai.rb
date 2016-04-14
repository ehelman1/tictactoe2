require_relative "tictactoe_logic.rb"

def get_move(board)
	available_spaces = get_available_spaces(board)
	available_spaces.sample
end
#takes no input and outpt is an array
def create_new_board()
    board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
end
#take input for x and output is the string x in place of 5
def update_board(board, position, marker)
	board[position] = marker
	board	
end

def valid_space?(board, position, marker)
	if board[position] == position + 1
		true
	else
		false
	end
	
end

def win?(board, marker)
	if board[2] == marker && board[5] == marker && board[8] == marker ||
	   board[7] == marker && board[4] == marker && board[1] == marker ||
	   board[6] == marker && board[3] == marker && board[0] == marker ||
	   board[0] == marker && board[1] == marker && board[2] == marker ||
	   board[3] == marker && board[4] == marker && board[5] == marker ||
	   board[6] == marker && board[7] == marker && board[8] == marker ||
	   board[0] == marker && board[4] == marker && board[8] == marker ||
	   board[2] == marker && board[4] == marker && board[6] == marker
		true
	else
		false
	end
end

def tie_game?(game_board)
	game_board.all? do |value|
		value.class == String
	end
end

def game_over?(game_board, marker)
	win?(game_board, marker) ||
	tie_game?(game_board)
end

def get_available_spaces(board)
	available_spaces = []
	board.each do |value|
		if value.is_a?(Fixnum)
			available_spaces << value
		end
	end
	available_spaces
end








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

def win?(board, position, marker)
	if board[2] && board[5] && board[8] == "X"
		true
	end
end
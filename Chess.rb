#



board = ChessBoard.new


#movements = [["a2", "a3"],["a2", "a4"],["a2", "a5"],["a7", "a6"],["a7", "a5"],["a7", "a4"],["a7", "b6"],["b8", "a6"],["b8", "c6"],["b8", "d7"],["e2", "e3"],["e3", "e2"]]

if board.valid_movement?(["a2", "a5")
	puts "Legal"
else
	puts 
	"Illegal"

end


class Piece 
	#stores position
end




class ChessBoard
	def initialize
		@pieces = {}
		@pieces["a2"] = Pawn.new
		@pieces["b2"] = Pawn.new
		@pieces["c2"] = Pawn.new
		@pieces["d2"] = Pawn.new
		@pieces["e2"] = Pawn.new
		@pieces["f2"] = Pawn.new
		@pieces["g2"] = Pawn.new
		@pieces["h2"] = Pawn.new
		@pieces["b1"] = Knight.new
		@pieces["g1"] = Knight.new
		@pieces["b8"] = Knight.new
		@pieces["g8"] = Knight.new

	end

	def legal_movement?(initial, final)
		piece = @pieces[initial]
		piece.position = final
		pieces[final] = piece 
	end

	#full of pieces
	#identify which piece is in that position and if that piece can move to second position
end

class Pawn < Piece
#forward if intial movement can move 2 spaces
#moves diagonally one space to take 1 if not initial
end

class Bishop < Piece
	#move diagonally unlimited number of spaces
end

class Knight < Piece
#move in an l three spaces tall one space to the side
end

class Queen < Piece
	#can move in any direction an unlimted number of spaces
end

class King < Piece
	#move any direction by 1 space
end

class Rook < Piece
	#can move any direction laterally 
end


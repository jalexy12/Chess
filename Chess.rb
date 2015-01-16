#movements = [["a2", "a3"],["a2", "a4"],["a2", "a5"],["a7", "a6"],["a7", "a5"],["a7", "a4"],["a7", "b6"],["b8", "a6"],["b8", "c6"],["b8", "d7"],["e2", "e3"],["e3", "e2"]]

# if board.valid_movement?(["a2", "a5")
# 	puts "Legal"
# else
# 	puts 
# 	"Illegal"

end


class Piece 
	def initialize(initialPos, whichTeam)
		@whichTeam = whichTeam
		@X = @initial[0]
		@Y = @initial[1]
		@initial = cord_Splitter(@initialPos)
	end

       
       
  

   def cord_splitter(letter)

       letters_toNumber = {"a" => 1, "b"=> 2, "c"=> 3, "d"=> 4, "e"=> 5, "f"=> 6, "g"=> 7, "h"=> 8} 
       key = letter[0]
       x = letters_toNumber[key]
       y = letter[1].to_i
       actual_position = [x,y]
       return actual_position
   end


end



	

end




class ChessBoard
	def initialize
		@pieces = {}
		@pieces["a2"] = Pawn.new("a2", "W")
		@pieces["b2"] = Pawn.new("b2", "W")
		@pieces["c2"] = Pawn.new("c2", "W")
		@pieces["d2"] = Pawn.new("d2", "W")
		@pieces["e2"] = Pawn.new("e2", "W")
		@pieces["f2"] = Pawn.new("f2","W")
		@pieces["g2"] = Pawn.new("g2", "W")
		@pieces["h2"] = Pawn.new("h2", "W")
		@pieces["a7"] = Pawn.new("a7", "B")
		@pieces["b7"] = Pawn.new("b7", "B")
		@pieces["c7"] = Pawn.new("c7", "B")
		@pieces["d7"] = Pawn.new("d7", "B")
		@pieces["e7"] = Pawn.new("e7", "B")
		@pieces["f7"] = Pawn.new("f7","B")
		@pieces["g7"] = Pawn.new("g7", "B")
		@pieces["h7"] = Pawn.new("h7", "B")
		# @pieces["g1"] = Knight.new
		# @pieces["b8"] = Knight.new
		# @pieces["g8"] = Knight.new
		puts @pieces

	end
	# def legal_movement?(initial, final)
	# 	piece = @pieces[initial]
	# 	piece.position = final
	# 	pieces[final] = piece 
	# end
end
board = ChessBoard.new









	


class Pawn < Piece
	def initialize(initialPos, whichTeam)
		@movecount += 1
		


	
#forward if intial movement can move 2 spaces
#moves diagonally one space to take 1 if not initial
 end

# class Bishop < Piece
# 	#move diagonally unlimited number of spaces
# end
	

# class Knight < Piece
# #move in an l three spaces tall one space to the side
# end

# class Queen < Piece
# 	#can move in any direction an unlimted number of spaces
# end

# class King < Piece
# 	#move any direction by 1 space
# end

# class Rook < Piece
# 	#can move any direction laterally 
# end


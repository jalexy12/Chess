require 'pry'

class Move
	attr_reader :column
	attr_reader :row
	attr_reader :coords
	def initialize(column, row)
		@column = column
		@row = row
		@coords = [@column, @row]
	end

end

Board = Struct.new(:column, :row)


class Piece
	def initialize(initial)
		@initial = cord_splitter(initial)
		if @initial[0] == 1 || 2 
			@whichteam = "Black"
		else
			@whichteam = "White"
		end
		@valid_moves = []
		moves
	end
	
    def add_moves(move)
		@valid_moves.push(move)
	end
  	
     def straight_in_any_direction(how_many)
     	if how_many.instance_of?(Range)
	     how_many.each do |num|
	     	add_moves(Move.new(0, num))
	     	add_moves(Move.new(0, -1 * num))
	     	add_moves(Move.new(num, 0))
	     	add_moves(Move.new(-1 * num, 0))
		 end
		else
			add_moves(Move.new(0, how_many))
	     	add_moves(Move.new(0, -1 * how_many))
	     	add_moves(Move.new(how_many, 0))
	     	add_moves(Move.new(-1 * how_many, 0))
	     end
     end

     def l_shape
 	    add_moves(Move.new(2, 1))
     	add_moves(Move.new(-2, 1))
     	add_moves(Move.new(2, -1))
     	add_moves(Move.new(-2, -1))
     	add_moves(Move.new(1, 2))
     	add_moves(Move.new(-1, 2))
     	add_moves(Move.new(1, -2))
     	add_moves(Move.new(-1, -2))
     end

     def diagonal(how_many)
     	if how_many.instance_of?(Range)
	     how_many.each do |num|
	     	add_moves(Move.new(-1 * num, -1 * num))
	     	add_moves(Move.new(num, -1 * num))
	     	add_moves(Move.new(num, num))
	     	add_moves(Move.new(-1 * num, num))
		 end
		else
			add_moves(Move.new(0, how_many))
	     	add_moves(Move.new(0, -1 * how_many))
	     	add_moves(Move.new(how_many, 0))
	     	add_moves(Move.new(-1 * how_many, 0))
	     end
     end

     def valid_move?(final_pos)
     	new_pos = cord_splitter(final_pos)
		diff = [(@initial[0] - new_pos[0]), (@initial[1] - new_pos[1])]
		@valid_moves.each do |move|
			if move.coords == diff
				return true
			end
		end
		return false
     end


	def cord_splitter(letters)
		letters_toNumber = {"a" => 1, "b"=> 2, "c"=> 3, "d"=> 4, "e"=> 5, "f"=> 6, "g"=> 7, "h"=> 8} 
		key = letters[0]
		new_x = letters_toNumber[key]
		new_y = letters[1].to_i
		actual_position = [new_x,new_y]
		return actual_position
	end
end
class Pawn < Piece
	def initialize(initial)
		@initial = cord_splitter(initial)
		if @initial[0] == 1 || 2 
			@whichteam = "Black"
		else
			@whichteam = "White"
		end
		@valid_moves = []
		@movecount = 0
		moves
	end
	def moves
		if @movecount == 0
			straight_in_any_direction(2)
		else
			straight_in_any_direction(1)
		end
	end
end
class Queen < Piece
	def moves
		straight_in_any_direction(1..7)
		diagonal(1..7)
	end
end

class Rook < Piece
	def moves
		straight_in_any_direction(1..7)
	end
end

class King < Piece
	def moves
		straight_in_any_direction(1)
		diagonal(1)
	end
end

class Knight < Piece
	def moves
		l_shape
	end
end

rook = Rook.new("a1")
king = King.new("e1")
knight = Knight.new("c1")
queen = Queen.new("d1")

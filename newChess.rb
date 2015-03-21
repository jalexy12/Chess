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
		if @initial[0] == 1 && 2 
			@whichteam = "Black"
		else
			@whichteam = "White"
		end
		@valid_moves = []
	end
	
    def add_moves(move)
		@valid_moves.push(move)
	end
  

     def straight_in_any_direction(how_many)
	     how_many.each do |num|
	     	add_moves(Move.new(0, num))
	     	add_moves(Move.new(0, -1 * num))
	     	add_moves(Move.new(num, 0))
	     	add_moves(Move.new(-1 * num, 0))
		 end
     end

     def l_shape
     	@moves.push(Move.new(2, 1), Move.new(-2, 1), Move.new(2, -1), Move.new(1, 2), Move.new(-1, 2), Move.new(1, -2))
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

class Rook < Piece
	
	def valid_move?(final_pos)
		@moves = straight_in_any_direction(1..7)

		new_pos = cord_splitter(final_pos)

		
		@moves.each do |move|
			binding.pry
			if move.coords == new_pos 
				valid_moves.push(move)
				puts "hello"
			end
		end
		p valid_moves
		
	end

end

# class Bishop < Piece
# 	def move(final_pos)
# 		new_position = cord_splitter(final_pos)

# 		valid = nil 

# 		# distance_x = (@initial[0] - new_position[0])
# 		# distance_y = (@initial[1] - new_position[1])
		
# 		if distance_x ==  && distance_y == 1 
# 			@valid = true 
# 		elsif 
# 			d
			
# 	end
# end

rook = Rook.new("a1")
rook.valid_move?("a2")
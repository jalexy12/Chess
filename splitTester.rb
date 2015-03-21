class CoordinateSplitter
	def initialize(cords)
		@cords = cords
		@X = @cords[0]
		@Y = @cords[1]

	end

	def to_num
		key = @X
		numHash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8}
		new_X = numHash[key]
		
		return "#{new_X} : #{@Y}"
	end


end

coordSplit = CoordinateSplitter.new("a2")


puts coordSplit.to_num




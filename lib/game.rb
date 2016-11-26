class Game

	attr_reader :world, :cell_obj

	def initialize(world, cell_obj)
		@world = world
		@cell_obj = cell_obj
	end

end
require 'world'
require 'cell'

class Game

	attr_reader :world, :seeds

	def initialize(world = World.new, seeds)
		@world = world
		@seeds = seeds

		seeds.each do |seed|
			@world.grid[seed[0]][seed[1]].set_status('alive')
		end
	end

end
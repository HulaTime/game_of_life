require 'world'
require 'cell'

class Game

	attr_reader :world, :seeds

	def initialize(world = World.new, seeds)
		@world = world
		@seeds = seeds

		seeds.each do |seed|
			world.grid[seed[0]][seed[1]].set_status('alive')
		end
	end

	def tick!
		y, x = 0, 0
		world.grid.each do |row|
			row.each do |cell|
				cell.set_status('dead') if world.cell_neighbours([x, y]) < 2
				x += 1
			end
			y += 1
		end
	end

end
class World

  attr_reader :row_num, :col_num, :grid

  def initialize(rows, columns, cell_obj = Cell.new)
    @row_num = rows
    @col_num = columns
    @grid = Array.new(col_num) do
    					Array.new(row_num) do
    						cell_obj
    					end
    				end
  end

  def seed(arr)
 		arr.each do |coord|
 			x, y = coord[0], coord[1]
 			grid[y][x].set_status('alive')
 		end
  end

  def count_cell_neighbours(cell_location)
  	neighbours = 0
  	neighbours += num_of_live_cells_north_or_south(cell_location)
  	neighbours += num_of_live_cells_east_or_west(cell_location)
  end

  private

  def num_of_live_cells_north_or_south(cl)
		grid[cl[1] + 1][cl[0]].alive? ? north = 1 : north = 0
  	grid[cl[1] - 1][cl[0]].alive? ? south = 1 : south = 0
  	north + south
  end

  def num_of_live_cells_east_or_west(cl)
		grid[cl[1]][cl[0] + 1].alive? ? east = 1 : east = 0
  	grid[cl[1]][cl[0] - 1].alive? ? west = 1 : west = 0
  	east + west
  end

end
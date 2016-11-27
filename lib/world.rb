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

  def count_cell_neighbours(cell)
  end

end
class World

  attr_reader :row_num, :col_num, :grid

  def initialize(rows, columns, cell_obj = Cell.new)
    @row_num = rows
    @col_num = columns
    @grid = [Array.new(row_num, cell_obj), Array.new(col_num, cell_obj)]
  end

end

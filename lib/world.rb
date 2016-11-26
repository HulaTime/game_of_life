class World

  attr_reader :row_num, :col_num, :grid

  def initialize(rows, columns)
    @row_num = rows
    @col_num = columns
    @grid = [Array.new(row_num), Array.new(col_num)]
  end

end

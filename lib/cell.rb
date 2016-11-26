class Cell

  attr_reader :alive, :x, :y

  def initialize(x = 0, y = 0)
    @alive = false
    @x = x
    @y = y
  end

end

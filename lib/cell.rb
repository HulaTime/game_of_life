class Cell

  attr_reader :x, :y, :alive

  def initialize
    @alive = false
    @x = nil
    @y = nil
  end

  def revive
  	@alive = true
  end

  def kill
    @alive = false
  end

  def set(x, y)
    @x, @y = x, y
  end

end
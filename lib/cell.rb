class Cell

  attr_accessor :x, :y

  def initialize(x = 0, y = 0)
    @alive = false
    @x = x
    @y = y
  end

  def alive?
  	@alive
  end

  def set_status(arg)
  	@alive = true if arg == 'alive'
  	@alive = false if arg == 'dead'
  end

end

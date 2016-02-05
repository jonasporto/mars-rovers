class Plateau

  def initialize(x:, y:)
    @x, @y = x, y
  end

  def in_bounds?(x, y)
    x_bounds?(x) && y_bounds?(y)
  end

  private

  def x_bounds?(i)
    (0..@x) === i
  end

  def y_bounds?(i)
    (0..@y) === i
  end
end

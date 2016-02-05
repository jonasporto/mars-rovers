class Rover
  
  attr_reader :x, :y

  NORTH, EAST, SOUTH, WEST = 'N', 'E', 'S', 'W'
  DIRECTIONS = [NORTH, EAST, SOUTH, WEST]
  
  def initialize(direction: 'N', x: 0, y: 0)
    @direction, @x, @y = direction.upcase, x, y
  end

  def turn_left
    @direction = DIRECTIONS[DIRECTIONS.index(@direction) - 1] 
  end

  def turn_right
    @direction = DIRECTIONS[(DIRECTIONS.index(@direction) + 1) % 4]
  end

  def move
    case @direction
    when NORTH
      @y += 1
    when SOUTH
      @y -= 1
    when EAST
      @x += 1
    when WEST
      @x -= 1
    end
  end

  def position
    "#{@x}#{@y}#{@direction}"
  end

  def to_s
    position
  end
end

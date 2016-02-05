class ParserHelper
  
  def initialize(stdin)
    @input = stdin.split
    plateau_attrs
  end

  def plateau_attrs
    @_plateau_attrs ||= {
      x: @input.shift.to_i,
      y: @input.shift.to_i
    }
  end
  
  def instructions
    @input.each_slice(4).map do |x, y, direction, actions|
      [x.to_i, y.to_i, direction, actions]
    end
  end  
end

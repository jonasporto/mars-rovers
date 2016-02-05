class RoverNavigator
  
  def initialize(plateau, rover, actions)
    @plateau = plateau
    @rover   = rover
    @actions = actions
  end

  def move
    @actions.each_char do |act|
      case act.upcase
      when "L" 
        @rover.turn_left
      when "R"
        @rover.turn_right
      when "M"
        if @plateau.in_bounds?(@rover.x, @rover.y)
          @rover.move
        end
      end
    end
  end

  def position
    @rover.position
  end
end

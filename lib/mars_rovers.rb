require_relative 'rover_navigator'
require_relative 'plateau'
require_relative 'rover'
require_relative 'parser_helper'

class MarsRovers

  def self.run(input)

    parsed  = ParserHelper.new(input)

    # define size of plateau
    plateau = Plateau.new(parsed.plateau_attrs)

    parsed.instructions.map do |x, y, direction, actions|
      # set the rover direction and position and starts a navigator handler
      rover     = Rover.new(direction: direction, x: x, y: y)
      navigator = RoverNavigator.new(plateau, rover, actions)
      navigator.move

      navigator.position
    end
  end
end


# Only run when this file is the main file
# instead of having been included by another file
if $0 == __FILE__
  STDOUT.puts MarsRovers.run(STDIN.read)
end

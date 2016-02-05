require_relative '../lib/rover_navigator'
require_relative '../lib/plateau'
require_relative '../lib/rover'

describe RoverNavigator do

  context '#move' do

    it "receive actions and forward to rover one by one" do
      plateau = Plateau.new(x: 5, y: 5)
      rover = Rover.new(direction: 'N', x: 1, y: 2)

      expect(rover).to receive(:move).exactly(5).times
      expect(rover).to receive(:turn_left).exactly(5).times
      expect(rover).to receive(:turn_right).exactly(5).times

      navigator = RoverNavigator.new(plateau, rover, 'LMRLMRLMRLMRLMR')
      navigator.move
    end

    it "don't forward to Rover#move when rover is out of the bounds of plateau" do
      
      plateau = Plateau.new(x: 5, y: 5)
      rover = Rover.new(direction: 'N', x: -1, y: 6)

      expect(rover).to receive(:move).exactly(0).times
      
      navigator = RoverNavigator.new(plateau, rover, 'MMMMM')
      navigator.move
    end
  end

  context '#position' do

    it "forward to Rover#position method" do
      plateau = Plateau.new(x: 5, y: 5)
      rover = Rover.new(direction: 'N', x: 1, y: 2)

      expect(rover).to receive(:position)
      
      navigator = RoverNavigator.new(plateau, rover, 'LMRLMR')
      navigator.position
    end
  end
end

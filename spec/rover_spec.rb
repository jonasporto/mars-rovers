require_relative '../lib/rover'

describe Rover do
  
  context '#initialize' do
    it "A Rover stores direction always in uppercase" do
      rover = Rover.new(direction: 'n', x: 0, y: 0)
      
      expect(rover.position).to eq('00N')
    end
  end

  context '#turn_left' do
    it "Take a full turn, turning left each turn" do
      rover = Rover.new(direction: 'N', x: 0, y: 0)

      expect(rover.turn_left).to eq('W')
      expect(rover.turn_left).to eq('S')
      expect(rover.turn_left).to eq('E')
      expect(rover.turn_left).to eq('N')
    end
  end

  context '#turn_right' do
    it "Take a full turn, turning right each turn" do
      rover = Rover.new(direction: 'N', x: 0, y: 0)

      expect(rover.turn_right).to eq('E')
      expect(rover.turn_right).to eq('S')
      expect(rover.turn_right).to eq('W')
      expect(rover.turn_right).to eq('N')
    end
  end

  context '#move' do
    it "each movement to north increments Y-axis" do
      rover = Rover.new(direction: 'N', x: 0, y: 0)

      rover.move
      expect([rover.x, rover.y]).to eq([0, 1])
      
      rover.move
      expect([rover.x, rover.y]).to eq([0, 2])
    end

    it "each movement to south decrements Y-axis" do
      rover = Rover.new(direction: 'S', x: 0, y: 2)

      rover.move
      expect([rover.x, rover.y]).to eq([0, 1])
      
      rover.move
      expect([rover.x, rover.y]).to eq([0, 0])
    end

    it "each movement to east increment X-axis" do
      rover = Rover.new(direction: 'E', x: 0, y: 0)

      rover.move
      expect([rover.x, rover.y]).to eq([1, 0])
      
      rover.move
      expect([rover.x, rover.y]).to eq([2, 0])
    end

    it "each movement to west decrement X-axis" do
      rover = Rover.new(direction: 'W', x: 2, y: 0)

      rover.move
      expect([rover.x, rover.y]).to eq([1, 0])
      
      rover.move
      expect([rover.x, rover.y]).to eq([0, 0])
    end
  end

  context '#position' do
    it "must return a default position when any attributes is passed to Rover#new" do
      rover = Rover.new
      
      expect(rover.position).to eq('00N')
    end

    it "must update the rover position in each movement" do
      rover = Rover.new(direction: 'N', x: 0, y: 0)

      rover.move
      expect(rover.position).to eq('01N')

      rover.move
      expect(rover.position).to eq('02N')

      rover.move
      expect(rover.position).to eq('03N')
    end
  end

  context '#to_s' do
    it "must foward to the position method" do
      rover = Rover.new(direction: 'N', x: 0, y: 0)
      
      expect(rover).to receive(:position)
      
      rover.to_s
    end
  end
end

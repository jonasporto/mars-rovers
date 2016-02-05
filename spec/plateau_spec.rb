require_relative '../lib/plateau'

describe Plateau do

  context '#in_bounds?' do

    it "check if a x, y coords given are in boundaries of plateau" do
      plateau = Plateau.new(x: 5, y: 5)

      expect(plateau.in_bounds?(5, 5)).to be_truthy
      expect(plateau.in_bounds?(6, 5)).to be_falsey
      expect(plateau.in_bounds?(5, 6)).to be_falsey
    end
  end
end

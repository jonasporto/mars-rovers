require_relative '../lib/mars_rovers'

describe MarsRovers do
  
  it "MarsRovers must handle all instructions and return the rovers positions" do
    mars_rovers = MarsRovers.run("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")

    expect(mars_rovers).to eq(["13N", "51E"])
  end
end

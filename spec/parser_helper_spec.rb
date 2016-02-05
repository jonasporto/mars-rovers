require_relative '../lib/parser_helper'

describe ParserHelper do

  context '#plateau_attrs' do

    it "receive input and returns plateau attributes" do
      parsed = ParserHelper.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")

      expect(parsed.plateau_attrs).to eq({x: 5, y: 5})
    end

    it "returns the same plateau attributes when called multiple times" do
      parsed = ParserHelper.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")

      expect(parsed.plateau_attrs).to eq({x: 5, y: 5})
      expect(parsed.plateau_attrs).to eq({x: 5, y: 5})
      expect(parsed.plateau_attrs).to eq({x: 5, y: 5})
    end
  end

  context '#instructions' do
  	it "return instructions splited by each rover coords and instructions" do
  	  parsed = ParserHelper.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")

  	  expect(parsed.instructions).to eq([[1, 2,'N','LMLMLMLMM'], [3, 3, 'E', 'MMRMMRMRRM']])
  	end
  end
end

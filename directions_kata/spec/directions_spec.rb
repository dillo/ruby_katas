require "spec_helper"

RSpec.describe Directions do
  it "removes needless directions" do
    directions_one = Directions.new(["NORTH", "SOUTH", "EAST", "WEST"])
    directions_two = Directions.new(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"])

    expect(directions_one.precise).to eq([])
    expect(directions_two.precise).to eq(["WEST", "WEST"])
  end
end

class Directions
  OPPOSITE = {
    "NORTH" => "SOUTH",
    "SOUTH" => "NORTH",
    "EAST"  => "WEST",
    "WEST"  => "EAST"
  }.freeze

  attr_reader :messy_directions

  def initialize(messy_directions)
    @messy_directions = messy_directions
  end

  def precise
    messy_directions.each_with_object([]) { |direction, path|
      path.last == OPPOSITE[direction] ? path.pop : path.push(direction)
    }
  end
end

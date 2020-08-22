require_relative "mathz"

module PerfectSquare
  class Finder
    attr_reader :number

    def self.create(number)
      new(number)
    end

    def initialize(number)
      @number = number
      @mathz = PerfectSquare::Mathz.create(number)
    end

    def next_square
      @mathz.next_square
    end

    def previous_square
      @mathz.previous_square
    end

    def perfect?
      @mathz.perfect_square?
    end

    def integer?
      number.is_a?(Integer)
    end
  end
end

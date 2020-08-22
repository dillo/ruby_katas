module PerfectSquare
  class Mathz
    attr_reader :number

    def self.create(number)
      new(number)
    end

    def initialize(number)
      @number = number
    end

    def next_square
      square(next_num)
    end

    def previous_square
      square(prev_num)
    end

    def perfect_square?
      (square_root % 1).zero?
    end

    private

    def next_num
      square_root + 1
    end

    def prev_num
      square_root - 1
    end

    def square_root
      Math.sqrt(number)
    end

    def square(num)
      num ** 2
    end
  end
end

module Fizzbuzz
  class Calculator
    DIVIDERS = [15, 3, 5].freeze

    def self.create
      new
    end

    def zero_remainder_divider(number)
      DIVIDERS.detect { |d| (number % d).zero? }
    end
  end
end


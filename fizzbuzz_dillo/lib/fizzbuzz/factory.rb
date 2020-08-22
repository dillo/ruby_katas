module Fizzbuzz
  class Factory
    REGISTERED_ITEMS = {
      15 => 'Fizzbuzz::FizzBuzz',
      3 => 'Fizzbuzz::Fizz',
      5 => 'Fizzbuzz::Buzz'
    }.freeze

    def self.create
      new
    end

    def initialize
      @calculator = Calculator.create
    end

    def output(number)
      divider = @calculator.zero_remainder_divider(number)

      divider.nil? ? number : fizzbuzz_word(divider)
    end

    private

    def fizzbuzz_word(divider)
      fizzbuzz_object(divider).word
    end

    def fizzbuzz_object(divider)
      Object.const_get(REGISTERED_ITEMS[divider]).create
    end
  end
end


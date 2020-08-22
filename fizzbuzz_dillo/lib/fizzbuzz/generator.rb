module Fizzbuzz
  class Generator
    RANGE_PREFIX = 1
    INVALID_NUMBER_MESSAGE = 'Enter a number you ...'.freeze

    def self.create(number)
      new(number)
    end

    def initialize(number)
      @number = number
      @fizzbuzz_factory = Factory.create
      @type_validator = TypeValidator.create(@number)
    end

    def produce
      return INVALID_NUMBER_MESSAGE unless @type_validator.integer?

      compose_fizzbuzz_array
    end

    private

    def compose_fizzbuzz_array
      number_array.map { |num| @fizzbuzz_factory.output(num) }
    end

    def number_array
      (RANGE_PREFIX..@number).to_a
    end
  end
end

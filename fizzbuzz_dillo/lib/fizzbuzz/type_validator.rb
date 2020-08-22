module Fizzbuzz
  class TypeValidator
    attr_reader :value

    def self.create(value)
      new(value)
    end

    def initialize(value)
      @value = value
    end

    def integer?
      value.is_a?(Integer)
    end
  end
end

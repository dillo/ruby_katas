require 'spec_helper'

RSpec.describe Fizzbuzz::Generator do
  describe '.create' do
    it 'returns an instance of Fizzbuzz::Generator' do
      expect(Fizzbuzz::Generator.create(100))
        .to be_an_instance_of(Fizzbuzz::Generator)
    end
  end

  describe '#produce' do
    context 'when argument is not a number' do
      it 'returns statement `Enter a number you ...`' do
        non_number_warning_message = 'Enter a number you ...'

        expect(Fizzbuzz::Generator.create(nil).produce)
          .to eq(non_number_warning_message)
        expect(Fizzbuzz::Generator.create('hsdfy74#*$').produce)
          .to eq(non_number_warning_message)
        expect(Fizzbuzz::Generator.create([1, 2, 3]).produce)
          .to eq(non_number_warning_message)
        expect(Fizzbuzz::Generator.create(foo: 'bar').produce)
          .to eq(non_number_warning_message)
        expect(Fizzbuzz::Generator.create(Object.new).produce)
          .to eq(non_number_warning_message)
        expect(Fizzbuzz::Generator.create(3.5).produce)
          .to eq(non_number_warning_message)
      end
    end

    context 'when number is a multiple of three' do
      it 'returns Fizz in place of the number' do
        generator = Fizzbuzz::Generator.create(3)

        expect(generator.produce).to eq([1, 2, 'Fizz'])
      end
    end

    context 'when number is a multiple of five' do
      it 'returns Buzz in place of the number' do
        generator = Fizzbuzz::Generator.create(5)

        expect(generator.produce).to eq([1, 2, 'Fizz', 4, 'Buzz'])
      end
    end

    context 'when number is a multiple of three or five' do
      it 'returns FizzBuzz in place of the number' do
        generator = Fizzbuzz::Generator.create(15)
        result_array =
          [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz',
           'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz']

        expect(generator.produce).to eq(result_array)
      end
    end
  end
end

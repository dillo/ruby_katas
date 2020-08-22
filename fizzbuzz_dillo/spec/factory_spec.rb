require 'spec_helper'

RSpec.describe Fizzbuzz::Factory do
  subject { Fizzbuzz::Factory.create }

  describe '#output' do
    context 'when number is 30' do
      it 'returns FizzBuzz' do
        expect(subject.output(30)).to eq('FizzBuzz')
      end
    end

    context 'when number is 10' do
      it 'returns Buzz' do
        expect(subject.output(10)).to eq('Buzz')
      end
    end

    context 'when number is 9' do
      it 'returns Fizz' do
        expect(subject.output(9)).to eq('Fizz')
      end
    end

    context 'when number yields non-zero remainder' do
      it 'returns 2' do
        expect(subject.output(2)).to eq(2)
      end
    end
  end
end
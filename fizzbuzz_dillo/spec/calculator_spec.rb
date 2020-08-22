require 'spec_helper'

RSpec.describe Fizzbuzz::Calculator do
  subject { Fizzbuzz::Calculator.create }

  describe '#zero_remainder_divider' do
    context 'when number is 30' do
      it 'returns 15' do
        expect(subject.zero_remainder_divider(30)).to eq(15)
      end
    end

    context 'when number is 10' do
      it 'returns 5' do
        expect(subject.zero_remainder_divider(10)).to eq(5)
      end
    end

    context 'when number is 9' do
      it 'returns 3' do
        expect(subject.zero_remainder_divider(9)).to eq(3)
      end
    end

    context 'when number yields non-zero remainder' do
      it 'returns nil' do
        expect(subject.zero_remainder_divider(2)).to eq(nil)
      end
    end
  end
end
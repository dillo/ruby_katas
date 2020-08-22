require 'spec_helper'

RSpec.describe Fizzbuzz::TypeValidator do
  let(:validator) { Fizzbuzz::TypeValidator.create(value) }

  describe '#integer?' do
    context 'when Integer' do
      let(:value) { 100 }

      it 'returns true' do
        expect(validator.integer?).to eq(true)
      end
    end

    context  'when not Integer' do
      let(:value) { ['foo'] }

      it 'returns false' do
        expect(validator.integer?).to eq(false)
      end
    end
  end
end

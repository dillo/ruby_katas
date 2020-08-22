require 'spec_helper'

RSpec.describe Fizzbuzz::FizzBuzz do
  subject { Fizzbuzz::FizzBuzz.create }

  describe '#word' do
    it 'returns FizzBuzz' do
      expect(subject.word).to eq('FizzBuzz')
    end
  end
end
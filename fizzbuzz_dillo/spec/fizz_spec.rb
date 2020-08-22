require 'spec_helper'

RSpec.describe Fizzbuzz::Fizz do
  subject { Fizzbuzz::Fizz.create }

  describe '#word' do
    it 'returns Fizz' do
      expect(subject.word).to eq('Fizz')
    end
  end
end

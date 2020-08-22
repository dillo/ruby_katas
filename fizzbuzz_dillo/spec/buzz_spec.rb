require 'spec_helper'

RSpec.describe Fizzbuzz::Buzz do
  subject { Fizzbuzz::Buzz.create }

  describe '#word' do
    it 'returns Buzz' do
      expect(subject.word).to eq('Buzz')
    end
  end
end
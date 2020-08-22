require "spec_helper"

require_relative "../lib/product_key"

RSpec.describe ProductKey do
  describe "#name_to_sym" do
    it 'returns a symbom given a string with commas and spaces' do
      name = "Sulfuras, Hand of Ragnaros"
      product_key = ProductKey.new(name)

      expect(product_key.name_to_sym).to eq(:sulfuras_hand_of_ragnaros)
    end
  end
end

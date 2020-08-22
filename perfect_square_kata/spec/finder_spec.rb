require "spec_helper"

RSpec.describe PerfectSquare::Finder do
  let(:number) { 16 }
  let(:finder) { PerfectSquare::Finder.create(number) }

  describe ".create" do
    it "must return an instance of PerfectSquare" do
      expect(finder).to be_an_instance_of(PerfectSquare::Finder)
    end
  end

  describe "#integer?" do
    context "when not an integer" do
      let(:number) { "foo" }

      it "must return false" do
        expect(finder.integer?).to be(false)
      end
    end

    context "when an integer" do
      it "must return true" do
        expect(finder.integer?).to be(true)
      end
    end
  end

  describe "#perfect?" do
    context "when not a perfect square" do
      let(:number) { 7 }

      it "must return false" do
        expect(finder.perfect?).to eq(false)
      end
    end

    context "when a perfect square" do
      it "must return true" do
        expect(finder.perfect?).to eq(true)
      end
    end
  end

  describe ".find_next_square" do
    it "must return 25" do
      expect(finder.next_square).to eq(25)
    end
  end

  describe ".find_previous_square" do
    it "must return 9" do
      expect(finder.previous_square).to eq(9)
    end
  end
end


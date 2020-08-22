require "spec_helper"

RSpec.describe MyFace::One do
  let(:like) { MyFace::One.create(['Foo']) }

  describe ".create" do
    it "should return an instance of One" do
      expect(like).to be_an_instance_of(MyFace::One)
    end
  end

  describe "#display" do
    it "should return a message" do
      expect(like.display).to eq("Foo likes this")
    end
  end
end

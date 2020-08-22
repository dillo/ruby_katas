require "spec_helper"

RSpec.describe MyFace::Two do
  let(:like) { MyFace::Two.create(['Foo', 'Bar']) }

  describe ".create" do
    it "should return an instance of Two" do
      expect(like).to be_an_instance_of(MyFace::Two)
    end
  end

  describe "#display" do
    it "should return a message" do
      expect(like.display).to eq("Foo and Bar like this")
    end
  end
end

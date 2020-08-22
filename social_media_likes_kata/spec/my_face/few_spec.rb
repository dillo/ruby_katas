require "spec_helper"

RSpec.describe MyFace::Few do
  let(:like) { MyFace::Few.create(['Foo', 'Bar', 'Blah']) }

  describe ".create" do
    it "should return an instance of Few" do
      expect(like).to be_an_instance_of(MyFace::Few)
    end
  end

  describe "#display" do
    it "should return a message" do
      expect(like.display).to eq("Foo, Bar and Blah like this")
    end
  end
end

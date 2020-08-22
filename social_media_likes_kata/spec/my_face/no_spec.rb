require "spec_helper"

RSpec.describe MyFace::No do
  let(:like) { MyFace::No.create([]) }

  describe ".create" do
    it "should return an instance of No" do
      expect(like).to be_an_instance_of(MyFace::No)
    end
  end

  describe "#display" do
    it "should return a message" do
      expect(like.display).to eq("no one likes this")
    end
  end
end

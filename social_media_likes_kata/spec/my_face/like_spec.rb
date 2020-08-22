require "spec_helper"

RSpec.describe MyFace::Like do
  let(:like) { MyFace::Like.create(nil) }

  describe ".create" do
    it "should return an instance of Like" do
      expect(like).to be_an_instance_of(MyFace::Like)
    end
  end

  describe "#display" do
    it "should return nil" do
      expect(like.display).to be_nil
    end
  end
end

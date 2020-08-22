require "spec_helper"

RSpec.describe MyFace::LikesFactory do
  let(:likes_factory) { MyFace::LikesFactory.create(["Foo", "Bar", "Baz"]) }

  describe ".create" do
    it "should return an instance of LikesFactory" do
      expect(likes_factory).to be_an_instance_of(MyFace::LikesFactory)
    end

    it "should return a names array" do
      expect(likes_factory.names).to eq(["Foo", "Bar", "Baz"])
    end

    it "should return an item of type Few" do
      expect(likes_factory.item).to be_an_instance_of(MyFace::Few)
    end
  end

  describe "#display" do
    context 'When few likes' do
      it "should return a message" do
        expect(likes_factory.display).to eq("Foo, Bar and Baz like this")
      end
    end
  end
end

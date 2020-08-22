require "spec_helper"

RSpec.describe MyFace::Many do
  let(:like) { MyFace::Many.create(['Foo', 'Bar', 'Baz', 'Boo', 'Beep']) }

  describe ".create" do
    it "should return an instance of Many" do
      expect(like).to be_an_instance_of(MyFace::Many)
    end
  end

  describe "#display" do
    it "should return a message" do
      expect(like.display).to eq("Foo, Bar and 3 others like this")
    end
  end
end

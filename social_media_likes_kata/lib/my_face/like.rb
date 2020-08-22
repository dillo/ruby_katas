module MyFace
  class Like
    def self.create(names)
      new(names)
    end

    def initialize(names)
      @names = names
    end

    def display; end
  end
end

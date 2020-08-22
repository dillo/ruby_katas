module MyFace
  class LikesFactory
    LIKE_ITEMS = {
      0 => MyFace::No,
      1 => MyFace::One,
      2 => MyFace::Two,
      3 => MyFace::Few,
      10 => MyFace::Many
    }

    attr_reader :names, :item

    def self.create(names)
      new(names)
    end

    def initialize(names)
      @names = names
      @likes_size = determine_names_size
      @item = LIKE_ITEMS[@likes_size].create(names)
    end

    def display
      item.display
    end

    private

    def determine_names_size
      array_length = names.size
      array_length > 3 ? 10 : array_length
    end
  end
end

module MyFace
  class Many < Like
    def display
      "#{@names[0..1].join(', ')} and #{@names[2..-1].size} others like this"
    end
  end
end

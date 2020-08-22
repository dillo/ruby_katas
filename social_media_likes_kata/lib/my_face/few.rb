module MyFace
  class Few < Like
    def display
      "#{@names.shift}, #{@names.join(' and ')} like this"
    end
  end
end

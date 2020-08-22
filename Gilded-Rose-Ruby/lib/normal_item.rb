class NormalItem
  attr_reader :days_remaining, :quality

  def initialize(days_remaining, quality)
    @days_remaining = days_remaining
    @quality = quality
  end

  def update
    @days_remaining -= 1
    return if quality <= 0

    @quality -= 1

    if days_remaining < 0
      @quality -= 1
    end
  end
end

require_relative "product_manager"

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    product = product_manager.process
    @days_remaining = product.days_remaining
    @quality = product.quality
  end

  def products
    {
      normal_item: "NormalItem",
      aged_brie: "AgedBrie",
      backstage_passes_to_a_tafkal80etc_concert: "BackstageConcert",
      sulfuras_hand_of_ragnaros: "SulfurasRagnaros"
    }
  end

  private

  def product_manager
    ProductManager.new(self)
  end
end

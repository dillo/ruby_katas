require_relative "product_key"
require_relative "aged_brie"
require_relative "backstage_concert"
require_relative "normal_item"
require_relative "sulfuras_ragnaros"

class ProductManager
  attr_reader :customer

  def initialize(customer)
    @customer = customer
  end

  def process
    key = customer.products.fetch(product_key)
    product = Object.const_get(key).new(customer.days_remaining, customer.quality)

    product.update
    product
  end

  private

  def product_key
    ProductKey.new(customer.name).name_to_sym
  end
end

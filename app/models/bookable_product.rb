class BookableProduct < ApplicationRecord
  
  def product
    @product ||= ShopifyAPI::Product.find(product_id)
  end
end

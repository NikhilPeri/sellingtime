class Shop < ApplicationRecord
  include ShopifyApp::Shop
  include ShopifyApp::SessionStorage
end

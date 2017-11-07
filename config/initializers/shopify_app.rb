ShopifyApp.configure do |config|
  config.application_name = "Booking"
  config.api_key = ENV["SHOPIFY_PUBLIC_KEY"]
  config.secret = ENV["SHOPIFY_SECRET_KEY"]
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end

ShopifyApp.configure do |config|
  config.application_name = "SellingTime"
  config.api_key = Rails.application.secrets.shopify_app_api_key
  config.secret = Rails.application.secrets.shopify_app_secret

  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
end

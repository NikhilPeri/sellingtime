ShopifyApp.configure do |config|
  config.application_name = "Booking"
  config.api_key = ENV["SHOPIFY_PUBLIC_KEY"]
  config.secret = ENV["SHOPIFY_SECRET_KEY"]
  config.scope = "read_orders, write_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.webhooks = [
    {topic: 'orders/paid', address: 'http://7def1638.ngrok.io/webhooks/orders_paid'},
    {topic: 'checkouts/create', address: 'http://7def1638.ngrok.io/webhooks/checkouts_create'},
    {topic: 'checkouts/delete', address: 'http://7def1638.ngrok.io/webhooks/checkouts_delete'},
    {topic: 'checkouts/update', address: 'http://7def1638.ngrok.io/webhooks/checkouts_update'},
  ]
end

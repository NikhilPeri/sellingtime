FactoryBot.define do
  factory :shop, class: Shop do
    shopify_domain 'blueprinters.myshopify.io'
    shopify_token { Faker:: }
  end
end

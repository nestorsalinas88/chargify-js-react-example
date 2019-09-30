# more examples with curl
# Testing product creation
# https://docs.chargify.com/api-products
# family id 1371281

curl --request POST \
 --url https://globo-gym.chargify.com/product_families/{family-id}/products.json \
--header 'authorization: Basic {api-encoded-key}' \
--header 'Accept:application/json' \
--header 'Content-Type:application/json' \
--data '{"product":{
  "handle":"uniq-handle-per-product",
  "name": "Hakunamatata",
  "description":"This is a test product being created through the api",
  "accounting_code":"12348",
  "request_credit_card":true,
  "price_in_cents":1000,
  "interval":1,
  "interval_unit":"month",
  "auto_create_signup_page": true,
  "update_return_url": "http://example.com/callback/update",
  "update_return_params": "?id={subscription_id}",
  "return_url": "http://example.com/callback/signup",
  "return_params": "?ref={customer_reference}"
}}'

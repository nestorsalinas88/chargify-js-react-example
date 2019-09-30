# getting single product by ID
# Product ID 5031910
curl --request GET \
 --url https://globo-gym.chargify.com/products/{product-id}.json \
--header 'authorization: Basic {api-encoded-key}' \
--header 'Accept:application/json' \
--header 'Content-Type:application/json'

# getting product by API handle
# api handle "fam-test-one"

curl --request GET \
 --url https://globo-gym.chargify.com/products/handle/{api-handle}.json \
--header 'authorization: Basic {api-encoded-key}' \
--header 'Accept:application/json' \
--header 'Content-Type:application/json'
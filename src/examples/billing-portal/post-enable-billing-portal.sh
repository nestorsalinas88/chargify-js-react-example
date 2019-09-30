# post call to enable billing portal for customer
# customer id 30088425


curl --request POST \
--url https://globo-gym.chargify.com/portal/customers/{customer-id}/enable.json \
--header 'authorization: Basic {some-encoded-key}' \
--header 'accept:application/json' \
--header 'content-type:application/json' \
--data '{}'

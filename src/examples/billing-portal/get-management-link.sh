# GET billing portal management link
# customer id 30088425

curl --request GET \
--url https://globo-gym.chargify.com/portal/customers/{customer-id}/management_link.json \
--header 'authorization: Basic {some-encoded-key}' \
--header 'accept:application/json' \
--header 'content-type:application/json' \
--data '{}'
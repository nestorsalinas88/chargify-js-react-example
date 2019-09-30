# creating an positive adjustment will add the the subscription total
# creating  negatove adjustment will add a credit to the subscription total
# 29149937

curl --request POST \
--url https://globo-gym.chargify.com/subscriptions/{subscription-id}/adjustments.json \
--header 'authorization: Basic {some-encoded-key}' \
--header 'Accept:application/json' \
--header 'Content-Type:application/json' \
--data '
{
  "adjustment": {
    "amount": "-40",
    "memo": "Recording usage for May 2020"
  }
}'
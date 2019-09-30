
#  Curl samples to manipulate Subscriptions from terminal

# list all subscriptions no params
#  curl -u <API-KEY>:X -H Accept:application/json -H Content-Type:application/json -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/

# list one specified subscription by ID
# curl -u <API-KEY>:X -H Accept:application/json -H Content-Type:application/json -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/{<subscription_id>}.json

# list all cancelled subscriptions
# curl -u <API-KEY>:X -H Accept:application/json -H Content-Type:application/json  -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/?state=canceled

# list subscriptions by product ID
# curl -u <API-KEY>:X -H Accept:application/json -H Content-Type:application/json -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/?product={<product_id>}


# list all subscriptions by product handle
# string probably gets converted to an integer (zero) and param is considered not present
#curl -u <API-KEY>:x -H Accept:application/json -H Content-Type:application/json -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/?product="<name-of-product>"

# list all subscriptions by coupon code
# not working for a coupon that is on the subscription but hasn't been applied yet
# not working for a coupon that has 1/1 uses applied either
#curl -u <API-KEY>:x -H Accept:application/json -H Content-Type:application/json -X GET https://<DOMAIN-NAME>.chargify.com/subscriptions/?coupon={<coupon_code>}



# Credit to WSMOAK for the helpful contributions
# https://github.com/wsmoak/chargify-examples/blob/master/get-subscriptions.sh


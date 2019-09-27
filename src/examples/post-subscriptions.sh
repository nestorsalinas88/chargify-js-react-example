# Creating some dummy subscriptions through curl commds
# Ugly way of passing a lrg json blob as params
# Creating a subscription through a curl command. Using Basic64 to encode {some-encoded-code-that-is-needed}
#curl --request POST \
#--url https://globo-gym.chargify.com/subscriptions.json \
#--header 'authorization: Basic {some-encoded-code-that-is-needed}' \
#--header 'Accept:application/json' \
#--header 'Content-Type:application/json' \
#--data '
#{
#  "subscription": {
#    "product_handle": "gym-membership",
#    "customer_attributes": {
#      "first_name": "SOME DUDE",
#      "last_name": "Some Dude",
#      "email": "dude@example.com",
#      "zip": "02120",
# 			"state": "MA",
# 			"reference": "SOMEREF",
# 			"phone": "(617) 111 - 0000",
# 			"organization": "Acme",
# 			"country": "US",
# 			"city": "Boston",
# 			"address_2": null,
# 			"address": "123 Mass Ave."
#    },
#    "credit_card_attributes": {
#      "first_name": "Example",
#      "last_name": "Customer",
#      "full_number": "4111111111111111",
#      "expiration_month": "10",
#      "expiration_year": "2020",
#      "card_type": "visa",
#			"billing_zip": "02120",
#			"billing_state": "MA",
#			"billing_country": "US",
#			"billing_city": "Boston",
#			"billing_address_2": null,
#			"billing_address": "123 Mass Ave."
#
#    }
#  }
#}
#'
# NOTES: "References" are unique identifiers, product settings will determine how much info needs to be submitted to the API.
# For example: If you require a shipping and billing address you will need to provide both in order to create a new subscription to that product
# Otherwise ERRORS will be prompted


# The example below was used as an example of importing json files as the params for a post request.
# Use our friendly developer tools to encode your credentials at https://reference.chargify.com/v1/subscriptions/create-subscription
# 1. Scroll to the POST /subscription.json example
# 2. Open the Try it out pane and enter your creditials
# 3. Code Generation will illustrate the 'Basic64' encoded value
# cURL away! Cheers!

#curl --request POST https://globo-gym.chargify.com/subscriptions.json -d @create-subscription-test.json \
#--header 'authorization: Basic {some-encoded-key}' \
#--header 'Accept:application/json' \
#--header 'Content-Type:application/json'





# creating a subscription with bad card data
# I have settings preconfigured on my products that require billing and shipping addresses.
# ERROR LOG: {"errors":["Shipping Address: cannot be blank.","Shipping City: cannot be blank.","Shipping State: cannot be blank.", "Shipping Country: cannot be blank.",
# "Shipping ZIP code: cannot be blank.","Billing Address: cannot be blank.","Billing City: cannot be blank.","Billing State: cannot be blank.","Billing Country: cannot be blank.",
# "Billing ZIP code: cannot be blank.","Customer: does not have a Shipping Address on file"]}

#curl --request POST https://globo-gym.chargify.com/subscriptions.json -d @create-bad-subscription.json \
#--header 'authorization: Basic {some-encoded-key}' \
#--header 'Accept:application/json' \
#--header 'Content-Type:application/json'





# revoking access to the billing portal for a spefic customer by ID
# customer id 30088425

curl --request DELETE \
--url https://globo-gym.chargify.com/portal/customers/{customer-id}/invitations/revoke.json \
--header 'authorization: Basic {some-encoded-key}' \
--header 'accept:application/json' \
--header 'content-type:application/json' \
--data '{}'


# response
#{"last_sent_at":"Not Invited","last_accepted_at":"Invite Revoked","uninvited_count":5}
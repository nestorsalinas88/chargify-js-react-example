# Creating some dummy subscriptions through the cUrl commds


#curl -v -u $CHARGIFY_API_KEY:x -H Accept:application/json -H Content-Type:application/json -X POST -d @create-product.json https://$CHARGIFY_SUBDOMAIN.chargify.com/product_families/$PRODUCT_FAMILY_ID/products.json
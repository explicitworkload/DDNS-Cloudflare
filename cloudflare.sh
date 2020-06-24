#!/bin/bash
#
# Dynamic DNS client for Cloudflare
# Uses akamai to get your external IP address
#

ip=$(curl -s http://whatismyip.akamai.com/)
curl -X PUT "https://api.cloudflare.com/client/v4/zones/0eeadfb9113559d8a861859c466e2e53/dns_records/9e1a7887c0fbbf68e407400f2b12a887" \
     -H "Authorization: Bearer ZZwV34uJnn2YQP_uQ3KO9BcTZsQ-2ICrTmlxaUAX" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"vulture.testaccelerator.com","content":"'${ip}'","ttl":1,"proxied":false}'
echo $ip

#!/bin/bash
#
# Dynamic DNS client for Cloudflare
# Uses akamai to get your external IP address
#

ip=$(curl -s http://whatismyip.akamai.com/)
curl -X PUT "https://api.cloudflare.com/client/v4/zones/XXXXXXXXXXZONEIDXXXXXXXX/dns_records/XXXXXXXXXXXRECORD_IDXXXXXXXXXXX" \
     -H "Authorization: Bearer XXXXXXXXAPI_TOKENXXXXXXXXXXXXX" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"XXXXXXXSUBDOMAINXXXXXXXXXX","content":"'${ip}'","ttl":1,"proxied":false}'
echo $ip

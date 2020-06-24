#!/bin/bash
#
# Dynamic DNS client for Cloudflare
# Uses akamai to get your external IP address
#
# Replace text marked with "XXXXXXXXXXXX" with the relevant ZONEID, RECORDID and API TOKEN from Cloudflare API pages.
# You will need to query cloudflare API for the DNS Record (ID) and also Zone ID is included, in order to update it below.
# - Step goes like these: get your API token, and do a GET https://api.cloudflare.com/client/v4/zones/XXXXXXXXXXZONEIDXXXXXXXX/dns_records, your json result will show the DNS Records which includes Record ID.
# - Now you have the recordid & zoneid.
# - Another way to get zoneid is to go to cloudflare dashboard
# 


ip=$(curl -s http://whatismyip.akamai.com/)
curl -X PUT "https://api.cloudflare.com/client/v4/zones/XXXXXXXXXXZONEIDXXXXXXXX/dns_records/XXXXXXXXXXXRECORD_IDXXXXXXXXXXX" \
     -H "Authorization: Bearer XXXXXXXXAPI_TOKENXXXXXXXXXXXXX" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"XXXXXXXSUBDOMAINXXXXXXXXXX","content":"'${ip}'","ttl":1,"proxied":false}'
echo $ip

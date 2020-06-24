# DDNS-Cloudflare
Need a bash script to run your Dynamic DNS updates 24x7? 

1) This script checks your external IP address using Akamai (HTTP), and update CloudFlare directly you can also replace it with other checkers.
2) 

0,30 */6    * * *   root    sh /path/to/cloudflare.sh >> /path/to/cloudflare.log

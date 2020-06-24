# Dynamic DNS client for Cloudflare
Need a bash script to run your Dynamic DNS updates 24x7? This uses fastest Akamai to get your external IP address.

1) This script checks your external IP address using Akamai (HTTP), and update CloudFlare directly you can also replace it with other checkers.
2) I've written comments in the script to show you how to get your cloudflare zoneid / recordid / api token


# Crontab
You can run this every 6 hours, on the 0th and 30th minute in your crontab (/etc/crontab) and it gives you a log file to check your updates

> 0,30 */6    * * *   root    sh /path/to/cloudflare.sh >> /path/to/cloudflare.log


Lastly, unrelated, don't forget to DNSSEC your domain name. :)

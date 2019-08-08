#!/sh

cat /usr/local/var/log/radius/freeradius-server-wpe.log | grep -A 1 -B 1 challe | sed -ze 's/\t//g' | sed -e 's/://g' | sed -e 's/username //g' | sed -ze 's/\nchallenge /:\$NETNTLM\$/g' | sed -ze 's/\nresponse /\$/g' | tr '-' ' ' | awk 'NF > 0'
